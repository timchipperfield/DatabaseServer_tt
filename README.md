## Description

This is a simple Sinatra server that is accessible on http://localhost:4000/. When it receives a request on http://localhost:4000/set?somekey=somevalue, it stores the key an value. When the server recieves http://localhost:4000/get?key=somekey, it returns the value stored at the key. The data is not stored in a database but the program is configured so that a database could be added at a later date.

## How to Run

1. Clone the repo to your local computer.
2. Bundle Install
3. type 'rackup' in your command line to start the server
