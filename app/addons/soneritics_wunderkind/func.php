<?php
if (!defined('BOOTSTRAP')) { die('Access denied'); }

function fn_soneritics_wunderkind_websiteid()
{
    return \Tygh\Registry::get('addons.soneritics_wunderkind.websiteid');
}

/**
 * Check if the Wunderkind tags need to be inserted
 * @param $controller
 * @param $mode
 * @param $action
 * @param $dispatch_extra
 * @param $area
 */
function fn_soneritics_wunderkind_before_dispatch($controller, $mode, $action, $dispatch_extra, $area)
{
    // Only for the customer area
    if (AREA != 'C') {
        return;
    }

    // Check if the current page contains data we should process
    switch ("{$controller}.{$mode}") {
        case 'checkout.complete':
            $template = 'sales';
            break;
    }

    // Set view variable for the addon
    if (!empty($template)) {
        Tygh::$app['view']->assign('soneriticsWunderkindPage', $template);
    }
}
