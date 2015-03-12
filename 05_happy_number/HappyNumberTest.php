<?php
require 'HappyNumber.php';
class HappyNumberTest extends PHPUnit_Framework_TestCase
{
	public $HappyNumber;

	public function setUp() {
		$this->HappyNumber = new HappyNumber();
	}

	public function testSquareRoot() {
		$this->assertEquals('49', $this->HappyNumber->squareRoot('7'));
	}

	public function testSquareTwoNumbers() {
		$this->assertEquals('97', $this->HappyNumber->squareByDigitsNumbers('49'));
	}

	public function testMoreNumber () {
		$this->assertEquals('Feliz', $this->HappyNumber->moreNumber(7));		
		$this->assertEquals('Triste', $this->HappyNumber->moreNumber(71));
	}
}