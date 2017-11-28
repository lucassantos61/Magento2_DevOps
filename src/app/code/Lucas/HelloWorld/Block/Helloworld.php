<?php

Namespace Lucas\HelloWorld\Block;

class Helloworld extends \Magento\Framework\View\Element\Template
{
    public function getHelloWorldTxt(){
        return 'Hello World !!!';
    }
}