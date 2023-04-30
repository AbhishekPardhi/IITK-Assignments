import socket

UDP_IP = "127.0.0.1"
UDP_PORT = 5005
sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
sock.bind((UDP_IP, UDP_PORT))
print("UDP server listening on {}:{}".format(UDP_IP, UDP_PORT))

while True:
    sentence, addr = sock.recvfrom(1024)
    print("Received message from {}: {}".format(addr, sentence.decode()))
    capitalizedSentence = sentence.upper()
    sock.sendto(capitalizedSentence, addr)