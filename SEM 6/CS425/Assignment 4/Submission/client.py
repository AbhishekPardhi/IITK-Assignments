import socket

UDP_IP = "127.0.0.1"
UDP_PORT = 5005
sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

while True:
    sentence = input('Input lowercase sentence:')
    sock.sendto(sentence.encode() , (UDP_IP, UDP_PORT))
    modifiedSentence, addr = sock.recvfrom(1024)
    print("Received message from {}: {}".format(addr, modifiedSentence.decode()))