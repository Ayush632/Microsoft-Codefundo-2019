# Microsoft-Codefundo-2019
  ## E-Elections: A reliable, safer and transparent alternative
                               

The ``` idea is to form a blockchain of all votes cast, wherein each node represents data of one particular voter.``` The entire scenario can be carried out in 3 distinct stages.


   ### STAGE 1: Verification of voter.
Before the voter casts his vote, and the node containing the information is inserted into the blockchain, the application will prompt the voter for a unique ID (fingerprint or retinal image). Once the ID is given and the``` credentials are matched```, then only the voter will be allowed to cast his/her vote. ```Verification of credentials will be performed by programming a Smart Contract into the network of nodes```, which map the details of the user (fingerprint, retinal image, age, sex, date of birth) to the registered constituency as well as a counter of vote casted or not. 

   ### STAGE 2: Casting and counting of votes 
Once the voter is cleared to cast the vote, the application will furnish the list of candidates on the interface and the voter will submit his/her response. ```The casted vote will be hashed using a hashing algorithm, and then encrypted using the voter’s private key``` (again fingerprint/retinal image is a good candidate for being used as the private key).``` The corresponding node will then be inserted into the blockchain. Each node’s data part will consist of voter’s details, counter of votes cast and, obviously the vote, in an encrypted form.``` This arrangement, in a way, enables the concerned voter to ```digitally sign his/her vote,``` with the satisfaction of knowing that only he could’ve gained access to his vote. 
Once the voting finishes, ```each node will be decrypted using the public key``` (which only the Election Commission will have)``` to yield the hash value, which in turn will be mapped to the candidate.``` Thus, the counting will take place.

  ###   STAGE 3: Ensuring transparency of elections
Our application ensures that each voter has a unique vote. If anyone attempts to tamper with any vote, i.e. to ```change the data/message stored in a node, its corresponding hash will also get changed.``` Hence, the next node which had earlier stored the hash of this node, will no longer do so. ```This will break the continuity of the blockchain, and the anomaly will immediately be detectedThis will ensure the fact that votes cannot be tampered with and transparency, with which votes can be casted.

### Hierarchy of systems:
	```Centre: Consisting of all the necessary information about voters throughout the country```
	```Constituency: It will comprise of all voters only from this given constituency. Any other person will be
			  denied voting access in this system. ```
	```In-Constituency: This system will be available at multiple location within a constituency with all
			  information as the upper level in all the systems. People from a given constituency
	                 can cast vote at any in any of these systems. Once voted, data will be updated at 
			  all the other systems to avoid redundancy```
