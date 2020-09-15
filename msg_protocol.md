# message protocol ...

Each node has an inbox

every one can post a *message* to this inbox

## Initial Connection Dialog

1. receiver post token (w/ TTL)
2. sender get token & post peerid
3. reciever get peerid


### Message Post Protocol (push)

To post a message 

 1. get an anonymous key pair for a inbox slot (ipns)
 2. write the message into the associated inbox slot


### Message Retrieval Protocol (pull)

To recover a message

 1. loop on all keys
 2. resolve each keys
 3. validate message
 4. append message to inbox list (queue)
