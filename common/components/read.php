<?php
namespace common\components;
error_reporting(0);
require_once 'PHPWord-master/src/PhpWord/Autoloader.php';
class read{
    public function toHTML($file)
    {
        \PhpOffice\PhpWord\Autoloader::register();
        $data = new \PhpOffice\PhpWord\Reader\Word2007();
        $content  = $data->load($file);
        $objWriter = \PhpOffice\PhpWord\IOFactory::createWriter($content, 'HTML');
        $objWriter->save('helloWorld.html');
        $content = file_get_contents("helloWorld.html");
        $array_row = explode('<tr>',$content);
        for($i = 2; $i<=count($array_row); $i++){
            $cells = explode('<td>', $array_row[$i]);
            $ngay = strip_tags($cells[1]);
            $thoigian = strip_tags($cells[2]);
            $noidung = $cells[3];
            if (trim(preg_replace('/&nbsp;/','',$ngay))=='' && $a[$i-1]['ngay'] != '')
            $a[$i]['ngay'] = $a[$i-1]['ngay'];
            else
            $a[$i]['ngay'] = $ngay;
            $a[$i]['thoigian'] = trim(preg_replace('/&nbsp;/','',$thoigian));
            $a[$i]['noidung'] = ($noidung);
            $d[] = $cells;
        }
        $b['ghichu'] = strstr($a[count($a)]['noidung'],'Ghi chú');
        foreach ($a as $key => $value) {
            $a[count($a)]['noidung'] = (substr($a[count($a)]['noidung'],0,strpos($a[count($a)]['noidung'],'Ghi chú')))?substr($a[count($a)]['noidung'],0,strpos($a[count($a)]['noidung'],'Ghi chú')):'';
        }
        array_pop($a);
        $a['ghichu'] = $b;
        return $a;
    }
    public function toText($file)
    {
            $striped_content = '';
            $content = '';

            $zip = zip_open($file);

            if (!$zip || is_numeric($zip)) return false;

            while ($zip_entry = zip_read($zip)) {

                if (zip_entry_open($zip, $zip_entry) == FALSE) continue;

                if (zip_entry_name($zip_entry) != "word/document.xml") continue;

                $content .= zip_entry_read($zip_entry, zip_entry_filesize($zip_entry));

                zip_entry_close($zip_entry);
            }// end while

            zip_close($zip);

            $content = str_replace('</w:r></w:p></w:tc><w:tc>', " ", $content);
            $content = str_replace('</w:r></w:p>', "\r\n", $content);
            $striped_content = strip_tags($content);
            $str =   strstr($striped_content,'TUẦN');
            $wy1 = substr($str,0,strpos($str,'TUẦN',1));
            $ws = substr($str,strpos($str,'TUẦN',1),strpos($str,'TRƯỜNG')- strpos($str,'TUẦN',1));
            $lich = substr($str,strpos($str,'Từ'),strpos($str,')',1)- strpos($str,'(',1)-1);
            $ngayTemp = str_replace(['Từ ngày ',' đến ngày '],'dateto',$lich);
            $ngayTemp_arr = explode('dateto',$ngayTemp);
            array_shift($ngayTemp_arr);
            $tuan['tuannam'] = $wy1;
            $tuan['tuannamhoc'] = $ws;
            $tuan['tungay'] = $ngayTemp_arr[0];
            $tuan['denngay'] = $ngayTemp_arr[1];
            return $tuan;
    }
}
?>