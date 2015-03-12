<?php

class HappyNumber {

	public function squareRoot($number) {
		return pow($number, 2);
	}

	public function squareByDigitsNumbers($number) {
		$result = 0;

		$var = str_split($number);
		$count = count($var);

		for ($i=0; $i < $count; $i++) {
			$result += $this->squareRoot($var[$i]);
		}
		return $result;
	}

	public function moreNumber ($number) {
		$tentativas = 1;

		while ($number != 1 && $tentativas <= 20) {
			$number = $this->squareByDigitsNumbers($number);
			$tentativas++;

		}
		return $number == 1 ? 'Feliz' : 'Triste';
	}

}