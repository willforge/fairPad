# IRQ protocol ...

Each node has an inbox

every one can post a *hash* to this inbox




### Post Protocol (push)

To post a hash 

 1. get an anonymous key pair for this inbox (ipns)
 2. write the payload into the key space


### Collection Protocol (pull)

To recover hash

 1. loop on all keys
 2. resolve each keys
 3. validate payload
 4. append hash to inbox queue








