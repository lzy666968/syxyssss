// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract InertionSort{
    function ifElseTest(uint256 _number) public pure returns (bool){
        if (_number ==0) {
            return true;
        }else{
            return  false;
        }
    }

    function forLoopTest() public pure returns(uint256){
        uint sum = 0;
        for (uint i = 0; i < 10;i++){
            sum +=i;
        }
        return (sum);
    }

    function whileTest() public pure returns(uint256){
        uint sum =0;
        uint i = 0;
        while(i < 11){
            sum +=i;
            i++;
        }
        return (sum);
    }


    function doWhileTest() public pure returns(uint256){
        uint sum = 0;
        uint i =0;
        do {
            sum+=i;
            i++;
        }while(i <11);
        return (sum);
    }


    function ternaryTest(uint256 x, uint56 y) public pure returns(uint256){
        return x > y ? x : y;
    }

    function ternaryTestBool(uint256 x, uint56 y) public pure returns(bool){
        return x > y ? true : false;
    }


    // function insertionSort(uint[] memory a) public pure returns(uint[] memory){
    //     for (uint i=1;i < a.length;i++){
    //         uint temp = a[i];
    //         uint j = i;
    //         while((j >=1)&&(temp < a[j-1])){
    //             a[j] = a[j-1];
    //             j--;
    //         }
    //         a[j] = temp;
    //     }
    //     return (a);
    // }
        //插入排序
    function insertionSort(uint[] memory a) public pure returns(uint[] memory) {
        for (uint i = 1; i<a.length;i++){
            uint temp = a[i];
            uint j =i;
            while ((j>=1 && (temp < a[j-1]))){
                a[j]=a[j-1];
                j--;
            }
            a[j] = temp;
        }
        return (a);
    }


    //冒泡排序
    function bubblesSort(uint256[] memory data) public pure returns (uint256[] memory){
        for (uint256 i = 0; i <data.length;i++){
            for (uint256 j=0; j<data.length-1-i;j++){
                if(data[j]>data[j+1]){
                    uint256 temp = data[j];
                    data[j]=data[j+1];
                    data[j+1]=temp;
                }
            }
        }
        return data;
    }

}