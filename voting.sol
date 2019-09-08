pragma solidity ^0.4.20;



contract voting
{
    enum StateType{
        stage0,
        stage1,
        CastV
    }
     StateType public State;
     string public Verification;
     string public votecasted;
     string public CastedVote;
     string public voterid;
     string public result;
     uint [] votes = new uint[](9);
     bytes b =new bytes(9);
     uint public j;
    constructor () public
     {
         //voterid = voter_id;
         //Verification="OK";

         State = StateType.stage0;
    }
    function stage0p(string voter_id) public{
         voterid=voter_id;
        Verification="OK";

        State = StateType.stage1;
    }

     function getKeccak256() public 
    {
        bytes32 sw = sha256(abi.encodePacked(votecasted));
        bytes memory bytesArray = new bytes(32);
        for(uint256 i;i<32;i++)
            {bytesArray[i] = sw[i];}


      CastedVote = string(bytesArray);
    }
    function stage0(string voter_id) public
    {
        voterid=voter_id;
        Verification="OK";

        State = StateType.stage1;
    }
    function result_count() public
    {
        uint max=0;
        uint na=0;
        for(j=1;j<5;j++)
        {
            if(votes[j]>max)
            {
                max=j;
                na=0;
            }
            else if(votes[j]==max ){
            na=10;
            }
            else{
                
            }
        }
        if(na==10){
            result= "Re-election";
        }
        else{


        if(max==1)
        {
            result="Candidate1 Won";

        }
        if(max==2)
        {
            result ="Candidate2 Won";
        }
        if(max==3)
        {
            result="Candidate3 Won";

        }
        if(max==4)
        {
            result ="Candidate4 Won";
        }
        }
        Verification="NA";
        voterid="NA";
        votecasted="NA";
        CastedVote="NA";

        State = StateType.CastV;
    }
    function Candidate1() public
    {
        votecasted = "candidate1";
      //  CastedVote = abi.encodePacked("candidate1",voterid);
      //  CastedVote = getKeccak256();
      getKeccak256();
        State = StateType.stage0;
    votes[1]=votes[1]+1;
    }

    function Candidate2() public
    {
        votecasted = "candidate2";
        //CastedVote = abi.encodePacked("candidate2",voterid);
       // CastedVote = getKeccak256();
       getKeccak256();
        State = StateType.stage0;
        votes[2]=votes[2]+1;
    }
    function Candidate3() public
    {
        votecasted = "candidate3";
       // CastedVote = abi.encodePacked("candidate3",voterid);
       // CastedVote = getKeccak256();
       getKeccak256();
        State = StateType.stage0;
        votes[3]=votes[3]+1;
    }
    function Candidate4() public
    {
        votecasted = "candidate4";
       // CastedVote = abi.encodePacked("candidate4",voterid);
       // CastedVote = getKeccak256();
        getKeccak256();
        State = StateType.stage0;
        votes[4]=votes[4]+1;
    }
   
}