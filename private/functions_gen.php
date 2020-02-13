<?php
function url_for($script_path,$source) {

    if($script_path[0] != '/') {
        $script_path = "/" . $script_path;
    }
    return WWW_ROOT ."/".$source. $script_path;
}

function redirect_to($location) {
    header("Location: " . $location);
    exit;
}

?>