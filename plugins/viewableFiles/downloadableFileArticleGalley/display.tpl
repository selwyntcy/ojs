{**
 * plugins/viewableFile/downloadableFileArticleGalley/display.tpl
 *
 * Copyright (c) 2014-2016 Simon Fraser University Library
 * Copyright (c) 2003-2016 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Embedded viewing of a downloadable galley.
 *}
{if $galley}
	<h3>{translate key="article.nonpdf.title"}</h3>
	{url|assign:"url" op="download" path=$article->getId()|to_array:$galley->getBestGalleyId($currentJournal)}
	<p>{translate key="article.nonpdf.note" url=$url}</p>

	<script>
		<!--
		var delay = 2000;
		setTimeout(function(){ldelim}
			window.location = '{$url}';
		{rdelim}, delay);
		// -->
	</script>
{/if}
