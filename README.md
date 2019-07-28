# Microsoft-Codefundo-2019
  ## E-Elections: A reliable, safer and transparent alternative
                               
The 2019 Lok Sabha elections was India largest ever, yet. For starters, it witnessed the highest ever voter turnout of 67.11%. This also meant that 20 lakh Police, and 3 lakh Paramilitary Forces personnel were deployed for ensuring free and fair elections, again a record high. Unsurprisingly, for conducting such a gargantuan exercise, as much as 60,000 Crore INR were spent on beefing up the infrastructure, social media campaigns, rallies, security and other miscellaneous expenses, which is a jump of more than 40% from that of 2014 elections. Even after spending so much money, there were incidents of booth capturing, allegations of EVM tampering and multiple voting. Hasn’t the time come for India, to look at a more safe, reliable and transparent alternatives, which not just aim to bring in more accountability, but also cut down on expenses?

The Election Commission of India has repeatedly stressed upon the use of tamper-proof EVMs. Each EVM consists of a single microchip, where the data of all the casted votes is stored. Since this chip isn’t controlled by any computer or a software, it is said to be un-hackable. However, this arrangement doesn’t ensure security to the information of votes, as there always remains a possibility (however small it may be) of pre-programming the microchip to behave in a certain way. Also, an enormous amount of manpower needs to be deployed to safe-keep the EVMs from the day of voting to the day of counting. 

The use of Blockchain technology, on Microsoft’s Azure platform can be usedto solve multiple issues pertaining to the security and accountability of the entire electoral process. The ``` idea is to form a blockchain of all votes cast, wherein each node represents data of one particular voter.``` The entire scenario can be carried out in 3 distinct stages.


   ### STAGE 1: Verification of voter.
Each constituency has a list of eligible voters. Conversely, every voter is eligible to vote only in his/her constituency. Before the voter casts his vote, and the node containing the information is inserted into the blockchain, the application will prompt the voter for a unique ID (fingerprint or retinal image). Once the ID is given and the``` credentials are matched```, then only the voter will be allowed to cast his/her vote. ```Verification of credentials will be performed by programming a Smart Contract into the network of nodes```, which map the details of the user (fingerprint, retinal image, age, sex, date of birth) to the registered constituency as well as a counter of vote casted or not. The UIDAI Aadhar is a good candidate to be used for identification (after being linked with Voter ID). This will not only ensure only legal voters to vote, but will also keep any voter from casting his/her vote more than once.

   ### STAGE 2: Casting and counting of votes 
Once the voter is cleared to cast the vote, the application will furnish the list of candidates on the interface and the voter will submit his/her response. ```The casted vote will be hashed using a hashing algorithm, and then encrypted using the voter’s private key``` (again fingerprint/retinal image is a good candidate for being used as the private key).``` The corresponding node will then be inserted into the blockchain. Each node’s data part will consist of voter’s details, counter of votes cast and, obviously the vote, in an encrypted form.``` This arrangement, in a way, enables the concerned voter to ```digitally sign his/her vote,``` with the satisfaction of knowing that only he could’ve gained access to his vote. 
Once the voting finishes, ```each node will be decrypted using the public key``` (which only the Election Commission will have)``` to yield the hash value, which in turn will be mapped to the candidate.``` Thus, the counting will take place.

  ###   STAGE 3: Ensuring transparency of elections
Our application ensures that each voter has a unique vote. If anyone attempts to tamper with any vote, i.e. to ```change the data/message stored in a node, its corresponding hash will also get changed.``` Hence, the next node which had earlier stored the hash of this node, will no longer do so. ```This will break the continuity of the blockchain, and the anomaly will immediately be detected.``` Thus, ```the data of casted votes is essentially immutable.``` The ```blockchain will be complete```, only when there is ```consensus amongst all the nodes,``` i.e. each node in the network correctly points to its previous node. This will ensure the fact that votes cannot be tampered with and transparency, with which votes can be casted.

### Hierarchy of systems:
	```Centre: Consisting of all the necessary information about voters throughout the country```
	```Constituency: It will comprise of all voters only from this given constituency. Any other person will be
			  denied voting access in this system. ```
	```In-Constituency: This system will be available at multiple location within a constituency with all
			  information as the upper level in all the systems. People from a given constituency
	                 can cast vote at any in any of these systems. Once voted, data will be updated at 
			  all the other systems to avoid redundancy```
				
				
### Expected advantages of using Blockchain and Azure’s Cloud Service in Elections
	
	•	Usage of Cloud simplifies the access of the huge logistics involved
	•	Blockchain ensures almost zero-tampering with casted votes
	•	Easy verification of legal voters
	•	Digital signature of each and every vote provides accountability
	•	Provides for easier and immediate counting of votes
	•	Allows for innovative analysis of elections. With our system we can easily get lot of information like
		preference of different age groups towards various parties or deviation of votes considering past
		elections data in different constituencies would help in statistical analysis of the same.
	•	Since a person can be also identified through mobile phones and other gadgets(with their id number or fingerprints), 
		mock elections can be held on a base level through gadgets ( especially those with finger print sensors) 
		which will provide a simple analysis similar to that of exit polls or opinion polls.
