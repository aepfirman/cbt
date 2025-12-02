<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/* 
 *  ======================================= 
 *  Author     : Muhammad Surya Ikhsanudin 
 *  License    : Protected 
 *  Email      : mutofiyah@gmail.com 
 *   
 *  Dilarang merubah, mengganti dan mendistribusikan 
 *  ulang tanpa sepengetahuan Author 
 *  ======================================= 
 */  
require_once APPPATH."/third_party/PHPExcel.php"; 
 
class Excel extends PHPExcel { 
    public function __construct() { 
        parent::__construct(); 
    }		
	public function cellColor($cells,$color){

    $this->getActiveSheet()->getStyle($cells)->getFill()->applyFromArray(array(
        'type' => PHPExcel_Style_Fill::FILL_SOLID,
        'startcolor' => array(
             'rgb' => $color
        )
    ));
	}

	public function formatCellCenter( $cells) {
		$style = array(
			'alignment' => array(
				'horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER,
			)
		);
		$this->getActiveSheet()->getStyle($cells)->applyFromArray($style);
	}

	public function columnSize( $col,$size) {
		$this->getActiveSheet()->getColumnDimension($col)->setWidth($size);
	}

	public function rowSize($row,$size) {
		
		$this->getActiveSheet()->getRowDimension($row)->setRowHeight($size);
	}

	public function mergeCells($from,$to) {
		$this->getActiveSheet()->mergeCells($from.':'.$to);
	}
}

?>