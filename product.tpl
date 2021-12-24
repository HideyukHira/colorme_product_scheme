<script type="application/ld+json">
    {
        "@context": "http://schema.org/",
        "@type": "Product",
        "name": "<{$product.name|regex_replace:"/<br>/":""}>",
        "description": "<{$product.explain|strip_tags}>",
        "SKU": "<{$product.id}>",
        "image": "<{$product.img_url}>",
        "brand" : {
        "@type" : "Brand",
        "name" : "<{if $bid_name != ""}><{$bid_name}><{/if}>"
        },
        "offers": {
        "@type": "Offer",
        "url": "https://WWW.YOURSITE.COM/?pid=<{$product.id}>",
        "availability": "http://schema.org/InStock",
        "priceCurrency": "JPY",
        "priceSpecification": {
        "@type": "PriceSpecification",
        "price": "<{$product.sales|regex_replace:"/\,/":""|regex_replace:"/.*税込/":""|regex_replace:"/円\)/":""}>",
        "priceCurrency": "JPY"
    }
    }
        }
        </script>
