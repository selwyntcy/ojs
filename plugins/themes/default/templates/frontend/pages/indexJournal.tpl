{**
 * templates/frontend/pages/indexJournal.tpl
 *
 * Copyright (c) 2014-2016 Simon Fraser University Library
 * Copyright (c) 2003-2016 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Display the index page for a journal
 *
 * @uses $currentJournal Journal This journal
 * @uses $journalDescription string Journal description from HTML text editor
 * @uses $homepageImage object Image to be displayed on the homepage
 * @uses $additionalHomeContent string Arbitrary input from HTML text editor
 * @uses $enableAnnouncementsHomepage bool Should we display announcements here?
 * @uses $issue Issue Current issue
 *}
{include file="frontend/components/header.tpl" pageTitleTranslated=$currentJournal->getLocalizedName()}

<div class="page_index_journal">

	{$journalDescription}

	{call_hook name="Templates::Index::journal"}

	{if $homepageImage}
		<div class="homepage_image">
			<img src="{$publicFilesDir}/{$homepageImage.uploadName|escape:"url"}" width="{$homepageImage.width|escape}" height="{$homepageImage.height|escape}" {if $homepageImageAltText != ''}alt="{$homepageImageAltText|escape}"{else}alt="{translate key="common.journalHomepageImage.altText"}"{/if}>
		</div>
	{/if}

	{* 20160125: hack: slide show for IASACT photos *}
	{* 20160128: upstream removed slick.js. temporarily withheld the photo slides *}

	<div class="slider slider-for">

		{* not sure if it's a must to specify css width; just play safe *}

		<div class="image" style="width: 563px;"><img src="{$publicFilesDir}/iasact2016slider01.jpg"></img></div>
		<div class="image" style="width: 563px;"><img src="{$publicFilesDir}/iasact2016slider02.jpg"></img></div>
		<div class="image" style="width: 563px;"><img src="{$publicFilesDir}/iasact2016slider03.jpg"></img></div>
		<div class="image" style="width: 563px;"><img src="{$publicFilesDir}/iasact2016slider04.jpg"></img></div>
		<div class="image" style="width: 250px;"><img src="{$publicFilesDir}/iasact2016slider05.jpg"></img></div>
		<div class="image" style="width: 563px;"><img src="{$publicFilesDir}/iasact2016slider06.jpg"></img></div>
		<div class="image" style="width: 557px;"><img src="{$publicFilesDir}/iasact2016slider07.jpg"></img></div>
		<div class="image" style="width: 500px;"><img src="{$publicFilesDir}/iasact2016slider08.jpg"></img></div>
		<div class="image" style="width: 500px;"><img src="{$publicFilesDir}/iasact2016slider09.jpg"></img></div>
		<div class="image" style="width: 500px;"><img src="{$publicFilesDir}/iasact2016slider10.jpg"></img></div>
		<div class="image" style="width: 500px;"><img src="{$publicFilesDir}/iasact2016slider11.jpg"></img></div>
		<div class="image" style="width: 563px;"><img src="{$publicFilesDir}/closing.jpg"></img></div>
		<div class="image" style="width: 563px;"><img src="{$publicFilesDir}/conference1.jpg"></img></div>
		<div class="image" style="width: 563px;"><img src="{$publicFilesDir}/conference2.jpg"></img></div>
		<div class="image" style="width: 480px;"><img src="{$publicFilesDir}/group.jpg"></img></div>
		<div class="image" style="width: 563px;"><img src="{$publicFilesDir}/yct.jpg"></img></div>
		<div class="image" style="width: 563px;"><img src="{$publicFilesDir}/taofongshan_chapel.jpg"></img></div>
		<div class="image" style="width: 563px;"><img src="{$publicFilesDir}/taofongshan_cross.jpg"></img></div>
		<div class="image" style="width: 500px;"><img src="{$publicFilesDir}/cuhk_entrance.jpg"></img></div>
	</div>
	<div class="slider slider-nav">

		{* must specify css width of div for Safari; not sure if it's needed for the above 'slider-for' part *}

		<div class="image" style="width: 225px;"><img src="{$publicFilesDir}/iasact2016slider01_t.jpg"></img></div>
		<div class="image" style="width: 225px;"><img src="{$publicFilesDir}/iasact2016slider02_t.jpg"></img></div>
		<div class="image" style="width: 225px;"><img src="{$publicFilesDir}/iasact2016slider03_t.jpg"></img></div>
		<div class="image" style="width: 225px;"><img src="{$publicFilesDir}/iasact2016slider04_t.jpg"></img></div>
		<div class="image" style="width: 100px;"><img src="{$publicFilesDir}/iasact2016slider05_t.jpg"></img></div>
		<div class="image" style="width: 225px;"><img src="{$publicFilesDir}/iasact2016slider06_t.jpg"></img></div>
		<div class="image" style="width: 223px;"><img src="{$publicFilesDir}/iasact2016slider07_t.jpg"></img></div>
		<div class="image" style="width: 200px;"><img src="{$publicFilesDir}/iasact2016slider08_t.jpg"></img></div>
		<div class="image" style="width: 200px;"><img src="{$publicFilesDir}/iasact2016slider09_t.jpg"></img></div>
		<div class="image" style="width: 200px;"><img src="{$publicFilesDir}/iasact2016slider10_t.jpg"></img></div>
		<div class="image" style="width: 200px;"><img src="{$publicFilesDir}/iasact2016slider11_t.jpg"></img></div>
		<div class="image" style="width: 225px;"><img src="{$publicFilesDir}/closing_t.jpg"></img></div>
		<div class="image" style="width: 225px;"><img src="{$publicFilesDir}/conference1_t.jpg"></img></div>
		<div class="image" style="width: 225px;"><img src="{$publicFilesDir}/conference2_t.jpg"></img></div>
		<div class="image" style="width: 192px;"><img src="{$publicFilesDir}/group_t.jpg"></img></div>
		<div class="image" style="width: 225px;"><img src="{$publicFilesDir}/yct_t.jpg"></img></div>
		<div class="image" style="width: 225px;"><img src="{$publicFilesDir}/taofongshan_chapel_t.jpg"></img></div>
		<div class="image" style="width: 225px;"><img src="{$publicFilesDir}/taofongshan_cross_t.jpg"></img></div>
		<div class="image" style="width: 200px;"><img src="{$publicFilesDir}/cuhk_entrance_t.jpg"></img></div>
	</div>
	<script type="text/javascript">
		$(document).ready(function(){ldelim}
			$('.slider-for').slick({ldelim}
				slidesToShow: 1,
				slidesToScroll: 1,
				arrows: false,
				fade: true,
				asNavFor: '.slider-nav'
			{rdelim});
			$('.slider-nav').slick({ldelim}
				slidesToShow: 3,
				slidesToScroll: 1,
				asNavFor: '.slider-for',
				dots: true,
				centerMode: true,
				centerPadding: '60px',
				focusOnSelect: true,
				arrows: true,
				variableWidth: true,
				autoplay: true,
				autoplaySpeed: 7000
			{rdelim});
		{rdelim});
	</script>

	{$additionalHomeContent}

	{* Announcements *}
	{if $enableAnnouncementsHomepage}
		<div class="cmp_announcements highlight_first">
			<h2>
				{translate key="announcement.announcements"}
			</h2>
			{foreach name=announcements from=$announcements item=announcement}
				{if $smarty.foreach.announcements.iteration > $numAnnouncementsHomepage}
					{php}break;{/php}
				{/if}
				{if $smarty.foreach.announcements.iteration == 1}
					{include file="frontend/objects/announcement_summary.tpl" heading="h3"}
					<div class="more">
				{else}
					<article class="obj_announcement_summary">
						<h4>
							<a href="{url router=$smarty.const.ROUTE_PAGE page="announcement" op="view" path=$announcement->getId()}">
								{$announcement->getLocalizedTitle()|escape}
							</a>
						</h4>
						<div class="date">
							{$announcement->getDatePosted()}
						</div>
					</article>
				{/if}
			{/foreach}
			</div><!-- .more -->
		</div>
	{/if}

	{if $issue && $currentJournal->getSetting('publishingMode') != $smarty.const.PUBLISHING_MODE_NONE}
		{* Display the table of contents or cover page of the current issue. *}
		<h3>{$issue->getIssueIdentification()|strip_unsafe_html|nl2br}</h3>
		{include file="frontend/objects/issue_toc.tpl"}
	{/if}
</div><!-- .page -->

{include file="common/frontend/footer.tpl"}
