? my $ctx = $main::context;
? my ($content, $args) = @_;
<h3 id="<?= $args->{name} ?>" class="directive-title"><a href="<?= $ctx->{filename} ?>#<?= $args->{name} ?>"><code>"<?= $args->{name} ?>"</code></a></h3>

<dl class="directive-desc">
<dt>Description:</dt>
<dd>
<p>
<?= Text::MicroTemplate::encoded_string($args->{desc}) ?>
</p>
<?= $content ?>
</dd>
<dt><a href="configure/syntax_and_structure.html#config_levels">Level</a>:</dt>
<dd><?= join(", ", @{$args->{levels}}) ?></dd>
? if ($args->{default}) {
<dt>Default:</dt>
<dd><code><pre><?= $args->{default} ?></pre></code>
? }
</dl>
