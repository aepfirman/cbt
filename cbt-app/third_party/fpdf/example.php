<?php
	require('fpdf.php');
	require('fpdi.php');

	$pdf = new FPDI('P','mm','A4');

	$pageCount = $pdf->setSourceFile("SKHUSM-JTG-3.pdf");
	$tplIdx = $pdf->importPage(1, '/MediaBox');

	$pdf->addPage();
	$pdf->SetMargins(1, 1 , 1);
	$pdf->useTemplate($tplIdx, null, null, 0, 0, true);

	$pdf->Output('test.pdf');
?>