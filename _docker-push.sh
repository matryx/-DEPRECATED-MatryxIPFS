docker build -t matryx-ipfs .

docker tag matryx-ipfs:latest 441665557124.dkr.ecr.us-west-1.amazonaws.com/matryx-ipfs:latest

docker push 441665557124.dkr.ecr.us-west-1.amazonaws.com/matryx-ipfs:latest