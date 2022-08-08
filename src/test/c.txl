% Null transform - format output according to grammar
include "C18/c.grm"

% Ignore byte order marks on source files
include "C18/bom.grm"

% Uncomment this line to approximately parse and preserve comments
% include "C18/c-comments.grm"
% TODO: uncommenting is leading to issues with multiline '//' comments, so disabled


rule replaceXDP_MD
	replace [token]
	 xdp_md
	by
	 __sk_buff
end rule

rule replaceXDP_DROP
	replace [token]
	  XDP_DROP
	by
	  TC_ACT_SHOT
end rule


rule replaceXDP_PASS
	replace [token]
	  XDP_PASS
	by
	  TC_ACT_OK
end rule


%rule replaceETH_PROTOINFO
%	replace [statement]
%	  'int_specifier 'x '= [number];
%	by
%	  'int_specifier  'y '= [number]; 
	 
%end rule

%rule addpkt_cls_header
%	replace [token]
%		#include <linux/bpf.h>
%	by
%		#include <linux/bpf.h> [NL] #include <linux/pkt_cls.h>
%end rule

%rule rms
%	skipping [initializer_unit]
%replace [initializer_unit]
%	by
%	 'x '= 'y; 
%end rule	
function main 
	replace [program]
		P [program]
	construct Assignments [repeat initializer_unit]
		_ [^ P]
		%[rms]
	by
		'x  
end function

