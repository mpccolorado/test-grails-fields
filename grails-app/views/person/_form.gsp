<%@ page import="test.grails.fields.Person" %>

<pre class="prettyprint">
${"""
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

