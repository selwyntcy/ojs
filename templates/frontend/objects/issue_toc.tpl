{**
 * templates/frontend/objects/issue_toc.tpl
 *
 * Copyright (c) 2014-2016 Simon Fraser University Library
 * Copyright (c) 2003-2016 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief View of an Issue which displays a full table of contents.
 *
 * @uses $issue Issue The issue
 * @uses $issueTitle string Title of the issue. May be empty
 * @uses $issueSeries string Vol/No/Year string for the issue
 * @uses $issueGalleys array Galleys for the entire issue
 * @uses $hasAccess bool Can this user access galleys for this context?
 * @uses $showGalleyLinks bool Show galley links to users without access?
 *}
<div class="obj_issue_toc">

	{* Indicate if this is only a preview *}
	{if !$issue->getPublished()}
		{include file="frontend/components/notification.tpl" type="warning" messageKey="editor.issues.preview"}
	{/if}

	{* Description *}
	{if $issue->hasDescription()}
		<div class="description">
			{$issue->getLocalizedDescription()|strip_unsafe_html|nl2br}
		</div>
	{/if}

	{* Full-issue galleys *}
	{if $issueGalleys && ($hasAccess || $showGalleyLinks)}
		<div class="galleys">
			<h2>
				{translate key="issue.fullIssue"}
			</h2>
			<ul class="galleys_links">
				{foreach from=$issueGalleys item=galley}
					<li>
						{include file="frontend/objects/galley_link.tpl" parent=$issue}
					</li>
				{/foreach}
			</ul>
		</div>
	{/if}

	{* Articles *}
	<div class="sections">
	{foreach name=sections from=$publishedArticles item=section}
		<div class="section">
		{if $section.articles}
			{if $section.title}
				<h2>
					{$section.title|escape}
				</h2>
			{/if}
			<ul class="articles">
				{foreach from=$section.articles item=article}
					<li>
						{include file="frontend/objects/article_summary.tpl"}
					</li>
				{/foreach}
			</ul>
		{/if}
		</div>
	{/foreach}
	</div><!-- .sections -->
</div>
