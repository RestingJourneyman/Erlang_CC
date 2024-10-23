
---

**Problem Title:** Implement a Simple Chat Server in Erlang

**Problem Statement:**

You are tasked with implementing a simple chat server using Erlang. In this system, there is one **server process** that receives messages from multiple **client processes**. The server’s job is to forward the received messages to all connected clients.

Each client is represented as a separate Erlang process, and the server should be able to handle multiple clients. You need to implement the following functionality:

1. **Client Processes:** Each client process sends messages to the server process.
2. **Server Process:** The server process forwards messages to all connected client processes (including the original sender).
3. **Message Handling:** Clients should be able to send and receive messages from the server.

You are required to demonstrate the chat server by simulating multiple clients sending and receiving messages.

### Function Signatures:
```erlang
start_server() -> pid().
start_client(ServerPid :: pid()) -> pid().
send_message(ClientPid :: pid(), Message :: string()) -> ok.
```

### Task Breakdown:
1. **start_server/0**: This function starts the server process and returns its process ID (`pid`). The server should be able to receive messages from clients and forward them to all connected clients.
   
2. **start_client/1**: This function starts a new client process and registers it with the server process (specified by `ServerPid`). The client can then send and receive messages to/from the server.

3. **send_message/2**: This function allows a client to send a message to the server. The server will then forward the message to all connected clients.

### Input:
- `start_server/0`: No input, it creates the server process.
- `start_client/1`: Takes the `pid` of the server process to which it connects.
- `send_message/2`: Takes the `pid` of a client and the message (a string) to be sent.

### Output:
- `start_server/0`: Returns the `pid` of the server.
- `start_client/1`: Returns the `pid` of the client.
- `send_message/2`: No output (just sends the message to the server and expects forwarding to clients).

### Constraints:
- Each client and the server are represented by separate processes.
- The server can handle multiple clients sending messages simultaneously.
- Messages can be simple strings.

### Example:

#### Example 1:
```erlang
% Start the server process
Input: ServerPid = start_server().
Output: <0.123.0>

% Start two client processes and connect them to the server
Input: Client1 = start_client(ServerPid).
Output: <0.124.0>

Input: Client2 = start_client(ServerPid).
Output: <0.125.0>

% Client1 sends a message to the server
Input: send_message(Client1, "Hello from Client 1").
Output: ok

% The server forwards the message to all clients (Client1 and Client2)
% Both clients should receive the message: "Hello from Client 1"

% Client2 sends a message to the server
Input: send_message(Client2, "Hello from Client 2").
Output: ok

% The server forwards the message to all clients (Client1 and Client2)
% Both clients should receive the message: "Hello from Client 2"
```

### Erlang Shell Test Cases:

Here are some commands you can run in Erlang's shell to test your implementation:

```erlang
% Compile the module
1> c(chat_server).
{ok, chat_server}

% Start the server
2> ServerPid = chat_server:start_server().
<0.123.0>

% Start two clients
3> Client1 = chat_server:start_client(ServerPid).
<0.124.0>

4> Client2 = chat_server:start_client(ServerPid).
<0.125.0>

% Client1 sends a message to the server
5> chat_server:send_message(Client1, "Hello from Client 1").
ok

% Client2 sends a message to the server
6> chat_server:send_message(Client2, "Hello from Client 2").
ok
```