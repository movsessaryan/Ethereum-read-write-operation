pragma solidity  ^0.4.4;

contract ReadWrite{
	mapping(string => bytes32) dataByKey;
	//there is no easy way to traverse trie so we keep separate array of data.
	bytes32[] allData;

	function read(string key) returns(bytes32){
		return dataByKey[key];
	}

	function getAllData() returns(bytes32[]){
		return allData;
	}

	function write(string key, bytes32 data) returns(bool success){
		if(dataByKey[key].length == 0){
			return false;
		}

		dataByKey[key] = data;
		allData.push(data);
		return true;
	}

}