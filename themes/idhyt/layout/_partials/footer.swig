<div class="copyright" >
  {% set current = date(Date.now(), "YYYY") %}
  &copy; {% if theme.since and theme.since != current %} {{ theme.since }} - {% endif %}
  <span itemprop="copyrightYear">{{ current }}</span>
  <span class="with-love">
    <i class="fa fa-heart"></i>
  </span>
  <span class="author" itemprop="copyrightHolder">
    {{ config.author }}
  </span>
</div>
<!--站长统计-->
<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1253030992'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s95.cnzz.com/z_stat.php%3Fid%3D1253030992%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script>
<!--
<div class="powered-by">
  {{ __('footer.powered', '<a class="theme-link" href="http://hexo.io" rel="external nofollow">Hexo</a>') }}
</div>
-->
<!--站长统计-->
<!-- <script src="https://s95.cnzz.com/z_stat.php?id=1259894121&web_id=1259894121" language="JavaScript"></script> -->

{% block footer %}{% endblock %}