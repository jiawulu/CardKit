
{% function hd(){ %}
    {% if (data.hd) { %}
    <header class="ck-hd-wrap">

        <span class="ck-hd {%= (data.hd_url && 'clickable' || '') %}">
            {% if (data.hd_url) { %}
            <a href="{%= data.hd_url %}" class="ck-link ck-link-mask {%= (data.hd_url_extern ? 'ck-link-extern' : '') %}"></a>
            {% } %}
            <span>{%= data.hd %}</span>
        </span>

        {% if (data.hd_opt) { %}
        <div class="ck-hdopt-wrap">{%=data.hd_opt%}</div>
        {% } %}

    </header>
    {% } %}
{% } %}

{% if (data.config.plain || data.config.plainhd) { %}
    {%= hd() %}
{% } %}

<article class="ck-unit-wrap">

    {% if (!data.config.plain && !data.config.plainhd) { %}
        {%= hd() %}
    {% } %}

    <section>
    {% if (!data.items.length) { %}
    <div class="ck-item blank">{%=(data.config.blank || '目前还没有内容')%}</div>
    {% } %}
    {% data.items.forEach(function(item){ %}
        <div class="ck-item">
            {%= item.content %}
        </div>
    {% }); %}
    </section>

    {% if (data.ft) { %}
    <footer>{%= data.ft %}</footer>
    {% } %}

</article>

