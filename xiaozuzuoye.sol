// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Library {
    // 图书信息结构体
    struct Book {
        uint id;
        string title;
        string author;
        bool isAvailable;
    }

    // 管理员地址
    address public admin;

    // 图书映射，存储图书信息
    mapping(uint => Book) public books;

    // 借阅者映射，记录借阅者和他们借阅的图书
    mapping(address => uint[]) public borrowers;

    // 事件
    event BookAdded(uint id, string title, string author);
    event BookBorrowed(uint id, address borrower);
    event BookReturned(uint id);

    // 构造函数，设置管理员
    constructor() {
        admin = msg.sender;
    }

    // 添加新图书
    function addBook(uint _id, string memory _title, string memory _author) public {
        require(msg.sender == admin, "Only admin can add books");
        require(books[_id].id == 0, "Book with this ID already exists");

        books[_id] = Book(_id, _title, _author, true);
        emit BookAdded(_id, _title, _author);
    }

    // 查询特定图书的信息
    function getBook(uint _id) public view returns (uint, string memory, string memory, bool) {
        require(books[_id].id != 0, "Book with this ID does not exist");
        Book storage book = books[_id];
        return (book.id, book.title, book.author, book.isAvailable);
    }

    // 借阅图书
    function borrowBook(uint _id) public {
        require(books[_id].id != 0, "Book with this ID does not exist");
        require(books[_id].isAvailable, "Book is not available");

        books[_id].isAvailable = false;
        borrowers[msg.sender].push(_id);
        emit BookBorrowed(_id, msg.sender);
    }

    // 归还图书
    function returnBook(uint _id) public {
        require(books[_id].id != 0, "Book with this ID does not exist");
        require(!books[_id].isAvailable, "Book is already available");

        books[_id].isAvailable = true;
        // 从借阅者列表中移除图书
        uint[] storage borrowedBooks = borrowers[msg.sender];
        for (uint i = 0; i < borrowedBooks.length; i++) {
            if (borrowedBooks[i] == _id) {
                borrowedBooks[i] = borrowedBooks[borrowedBooks.length - 1];
                borrowedBooks.pop();
                break;
            }
        }
        emit BookReturned(_id);
    }
}
