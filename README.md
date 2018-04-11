# MatryxIPFS
This repo houses our Go-IPFS Daemon for MatryxExplorer. Eventually, MatryxExplorer and this repo will become one (under the same docker image).


Deploy this IPFS docker node with MatryxExplorer in order to activate IPFS for the Explorer.

When you run this dockerized IPFS solution, the websocket at port 9999 will be open and make sure you grab this IPFS node's peer ID hash.
Then go into MatryxExplorer and change the .env variable to be that hash for the end of 'IPFS_DAEMON_PEER_ID'. Now when you launch the MatryxExplorer it will start syncing with the discoverable MatryxIPFS docker container.

Feel free to ask questions anytime!

Best,
The Matryx Team
