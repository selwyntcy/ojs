{**
 * templates/controllers/grid/issues/issueToc.tpl
 *
 * Copyright (c) 2014-2016 Simon Fraser University Library
 * Copyright (c) 2003-2016 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Display the issue's table of contents
 *}
{help file="issue-management.md#edit-issue-toc" class="pkp_help_tab"}
<script>
	$(function() {ldelim}
		// Attach the form handler.
		$('#issueTocForm').pkpHandler('$.pkp.controllers.form.AjaxFormHandler');
	{rdelim});
</script>

{url|assign:issueTocGridUrl router=$smarty.const.ROUTE_COMPONENT component="grid.toc.TocGridHandler" op="fetchGrid" issueId=$issue->getId() escape=false}
{load_url_in_div id="issueTocGridContainer" url=$issueTocGridUrl}
