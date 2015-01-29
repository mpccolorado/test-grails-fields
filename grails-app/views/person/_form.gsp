<%@ page import="test.grails.fields.Person" %>

<h1>Layouts used in this project</h1>


<span><strong>Fieldset layout</strong>: <i>_fields/_layouts/_fieldset.gsp</i> </span>
<pre class="prettyprint">
${"""<fieldset class="embedded \${property}">
<legend>\${label} with <strong>fieldset layout</strong></legend>
\${raw(renderedField)}
</fieldset>
"""}
</pre>

<span><strong>Layout2</strong>: <i>_fields/_layouts/_layout2.gsp</i> </span>
<pre class="prettyprint">
${"""<strong>layout2-> [</strong>
<label for="\${property}">\${label}</label>
\${raw(renderedField)}
<strong>]</strong>
<br/>
"""}
</pre>
<span>
    The variable <strong>renderedField</strong> is the component itself.<br/>
    If you want to change the <strong>default layout</strong> then create a template in <i>_fields/default/_layout.gsp</i></span>

<pre class="prettyprint">
${"""<f:with bean="personInstance">
    <f:field property="salutation"/>
    <f:field property="firstName"/>
    <f:field property="lastName" layout="fieldset"/>
    <f:field property="gender"/>
    <f:field property="birthDate" layout="layout2"/>
    <f:field property="email" layout="layout2"/>
    <f:field property="address"/>
    <f:field property="birthDate" component="time"/>
</f:with>
"""}
</pre>

<f:with bean="personInstance">
    <f:field property="salutation"/>
    <f:field property="firstName"/>
    <f:field property="lastName" layout="fieldset"/>
    <f:field property="gender"/>
    <f:field property="birthDate" layout="layout2"/>
    <f:field property="email" layout="layout2"/>
    <f:field property="address"/>
    <f:field property="birthDate" component="time"/>
</f:with>

<pre class="prettyprint">
    ${"""
<f:with bean="personInstance" layout="layout2">
    <f:field property="salutation"/>
    <f:field property="firstName"/>
    <f:field property="lastName" layout="fieldset"/>
    <f:field property="gender"/>
    <f:field property="birthDate"/>
    <f:field property="email"/>
    <f:field property="address"/>
</f:with>
"""}
</pre>

<f:with bean="personInstance" layout="layout2">
    <f:field property="salutation"/>
    <f:field property="firstName"/>
    <f:field property="lastName" layout="fieldset"/>
    <f:field property="gender"/>
    <f:field property="birthDate"/>
    <f:field property="email"/>
    <f:field property="address"/>
</f:with>

<pre class="prettyprint">
    ${"""
<f:with bean="personInstance">
    <f:display property="salutation"/>
    <f:display property="firstName"/>
    <f:display property="lastName" layout="fieldset"/>
    <f:display property="gender"/>
    <f:display property="birthDate"/>
    <f:display property="email" layout="layout2"/>
    <f:display property="address"/>
</f:with>
"""}
</pre>

<f:with bean="personInstance">
    <f:display property="salutation"/>
    <f:display property="firstName"/>
    <f:display property="lastName" layout="fieldset"/>
    <f:display property="gender"/>
    <f:display property="birthDate"/>
    <f:display property="email" layout="layout2"/>
    <f:display property="address"/>
</f:with>

