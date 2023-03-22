@initialize:python@
@@
import os

@searching@
expression path, fn;
expression ret;
@@
(
MERGE_FUNCTION_OPENED(path, fn, ...);
| 
ret = MERGE_FUNCTION_OPENED(path, fn, ...);
)

@script:python generation@
path << searching.path;
fn << searching.fn;
new_fn;
include_name;
@@
print "Obtained path: %s and file name: %s" % (path,fn)
coccinelle.new_fn = cocci.make_expr(fn.strip('\"'))

pre, ext = os.path.splitext(path.strip('\"'))
p = "%s.h" % (pre)

# Another thing that we can do here is to check if the function really exist
# in the program
# There is another way to do it, i.e., using cocci.make_position to extract
# the function from the source file

coccinelle.include_name = cocci.make_ident("\n#include \"%s\"" % (p))

@replacement@
expression searching.fn;
expression searching.path;
expression searching.ret;
expression generation.new_fn;
expression E1, E2;
expression list E3;
@@
(
- MERGE_FUNCTION_OPENED(path, fn, E3);
+ new_fn(E3);
|
- ret = MERGE_FUNCTION_OPENED(path, fn, E3);
+ ret = new_fn(E3);
)

@add_include depends on replacement@
identifier generation.include_name;
@@

#include <...>
++ include_name