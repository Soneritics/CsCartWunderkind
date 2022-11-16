<!-- Start BounceX Conversion MultiPixel. Deploy at the beginning of document head. -->
<script>
    window.top.bouncex = window.top.bouncex || [];
    window.top.bouncex.push(["conversion", {
        "order_id":"{$order_info.order_id}",
        "email":"{$order_info.email}",
        "phone":"{$order_info.phone}",
        "goal":"purchase",
        "transaction_origin":"online",
        "currency":"EUR",
        "total_discount":"0",
        "tax":"{round(($order_info.total / 121) * 21, 2)}",
        "shipping":"{$order_info.shipping_cost}",
        "amount":"{$order_info.total}",
        "pay_method":"{$order_info.payment_method.payment}",
        "item":[
            {foreach from=$order_info.products item=product name=productLoop}{
                {
                    "sku":"{$product.product_code}",
                    "product_id":"{$product.product_code}",
                    "price":"{$product.price}",
                    "quantity":"{$product.amount}"
                }
            }{if !$smarty.foreach.productLoop.last},{/if}
            {/foreach}
        ]
    }]);
</script>
<!-- End BounceX Conversion MultiPixel. -->

<!-- Start BounceX Conversion MultiPixel. Deploy at the beginning of document body. -->
<img height=1 width=1 border=0 style="display:none;" src="//api.bounceexchange.com/capture/convert2.gif?website_id={fn_soneritics_wunderkind_websiteid()}&order_id={$order_info.order_id}&email={$order_info.email}&amount={$order_info.total}&currency=EUR&goal=purchase" />
<!-- End BounceX Conversion MultiPixel. -->
