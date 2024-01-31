// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract calc{
    uint256 public c;
    uint256 public c1;
    uint256 public c2;
    uint256 public c3;
    string[] public p1;
    string[] public p2;
    string[] public p3;
    string public p;
    constructor(){
        c1 = 0;
        c2 = 0;
        c3 = 0;
        c=0;
    }

    function IngreseNom( string memory _nombre) public  {
        p =_nombre;
    }
    
    function VotoC1() public {
        p1.push(p);
        c++;
        c1++;
    } 
    function VotoC2() public {
        p2.push(p);
        c++;
        c2++;
    } 
    function VotoC3() public {
        p3.push(p);
        c++;
        c3++;
    } 
    function PorC1() public view returns (uint256){
        return (c1*100)/c;
    }
    function PorC2() public view returns (uint256){
        return (c3*100)/c;
    }
    function PorC3() public view returns (uint256){
        return (c3*100)/c;
    }
}