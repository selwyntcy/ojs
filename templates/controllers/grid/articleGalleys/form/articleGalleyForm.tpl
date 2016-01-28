{**
 * templates/editor/issues/articleGalleyForm.tpl
 *
 * Copyright (c) 2014-2016 Simon Fraser University Library
 * Copyright (c) 2003-2016 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Form to add/edit an issue galley.
 *}
<script>
	$(function() {ldelim}
		// Attach the form handler.
		$('#articleGalleyForm').pkpHandler(
			'$.pkp.controllers.form.AjaxFormHandler'
		);
	{rdelim});
</script>
<form class="pkp_form" id="articleGalleyForm" method="post" action="{url op="updateFormat" submissionId=$submissionId representationId=$representationId}">
	{fbvFormArea id="galley"}
		{fbvFormSection title="submission.layout.galleyFileData"}
			{fbvElement type="text" label="submission.layout.galleyLabel" value=$label id="label" size=$fbvStyles.size.MEDIUM inline=true}
			{if $enablePublicGalleyId}
				{fbvElement type="text" label="submission.layout.publicGalleyId" value=$publicGalleyId id="publicGalleyId" size=$fbvStyles.size.MEDIUM inline=true}
			{/if}
		{/fbvFormSection}
		{fbvFormSection}
			{fbvElement type="select" id="galleyLocale" label="common.language" from=$supportedLocales selected=$galleyLocale|default:$formLocale size=$fbvStyles.size.MEDIUM translate=false inline=true}
			{fbvElement type="select" id="galleyType" label="submission.layout.galleyType" from=$enabledPlugins selected=$galleyType size=$fbvStyles.size.MEDIUM translate=false inline=true}
		{/fbvFormSection}
	{/fbvFormArea}

	{fbvFormButtons submitText="common.save"}
</form>
