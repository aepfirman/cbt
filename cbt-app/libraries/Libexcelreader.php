<?php

require_once APPPATH."/third_party/PHPExcel/IOFactory.php";

class Libexcelreader extends PHPExcel_IOFactory {
   public function __construct() {
      parent::__construct();
   }
}

?>