Transaction costs are based on the cost of sending data to the blockchain.
There are 4 items which make up the full transaction cost:

- the base cost of a transaction (21000 gas)
- the cost of a contract deployment (32000 gas)
- the cost for every zero byte of data or code for a transaction.
- the cost of every non-zero byte of data or code for a transaction.

Execution costs are based on the cost of computational operations which are executed as a result of the transaction.

Then tx cost is: 21000 + 32000 + data cost + execution cost
