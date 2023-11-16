import socket
# AF_INET is ipv4; SOCK_STREAM is TCP, SOCK_DGRAM is UDP
tcp = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
# allow socket to be reused
tcp.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
host = socket.gethostname()   # get local device IP
port = 9999

def doServer():
  tcp.bind((host, port))
  tcp.listen(5)   #listen to 5 connections at most
  print("Listening...") 
  while True:
    csocket, addr = tcp.accept()
    print(f"Client connected: {addr}")
    msg = "Thanks for connecting!".encode('ascii')
    csocket.send(msg)
    csocket.close()
  pass

def doClient():
  tcp.connect((host, port))
  msg = tcp.recv(1024)    # recieve up to 1024 bytes from server
  tcp.close()
  print(f"Recieved server message: {msg.decode('ascii')}")
  pass

choice = input("Are you client or server: ")
if choice in "client":
  doClient()
else:
  doServer()
  pass
