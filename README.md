# fairPad

fairPad allow to edit text on an HTMLpage
(prior knowledge of a text repository urn)

text capture w/ minimum styling (markdown)
support for link and image, and search

The pad has a "like" button which allow the node to "seed" the text
(i.e. place a pin on the corresponding IPFS hash,
therefore the file is stored locally in $IPFS_PATH/blocks/...
(the garbage collector won't removed it)
thus the file is made available on the P2P network
and the node is actively distributed this file)

The pad has also a "pin" button which allow the file to be pinned via
[pinata services][1], making the file available outside the node (IPFS cloud).



The source files resides on [distributedbrain][2]'s git-keybase @ keybase://team/distributedbrain/fairPad 

[1]: https://pinata.cloud
[2]: https://keybase.io/team/distributedbrain
