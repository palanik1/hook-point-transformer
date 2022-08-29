from socket import *

# Create a UDP socket
# Notice the use of SOCK_DGRAM for UDP packets
serverSocket = socket(AF_INET, SOCK_DGRAM)
dst_ip = "40.0.2.2"
dst_port = 80
# Assign IP address and port number to socket
serverSocket.bind((dst_ip, dst_port))

while True:
    message, address = serverSocket.recvfrom(1024)
    print("Address: ",address)
    print("Message: ",message)
    break

