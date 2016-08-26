<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>NOTIFY_MANAGER</fullName>
        <description>NOTIFY MANAGER WHEN RECORD IS DEACTIVATED</description>
        <protected>false</protected>
        <recipients>
            <field>Manager_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>My_personal_email_templates/Notify_Manager_record_is_deactivated</template>
    </alerts>
    <alerts>
        <fullName>NOTIFY_MANAGER_WHEN_RECORD_IS_DEACTIVATED</fullName>
        <ccEmails>bhashika.raurale@eternussolutions.com</ccEmails>
        <description>NOTIFY MANAGER WHEN RECORD IS DEACTIVATED</description>
        <protected>false</protected>
        <recipients>
            <recipient>disha.bhagchandani@eternussolutions.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SalesNewCustomerEmail</template>
    </alerts>
    <fieldUpdates>
        <fullName>Non_Technical_when_Current_Employee</fullName>
        <description>A workflow should be in place to set the record type to Non-Technical when ‘Current Employee’ is false</description>
        <field>RecordTypeId</field>
        <lookupValue>Non_Technical</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Non-Technical when ‘Current Employee’</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>%E2%80%98Current Employee%E2%80%99 is false</fullName>
        <active>true</active>
        <description>A workflow should be in place to set the record type to Non-Technical when ‘Current Employee’ is false</description>
        <formula>IF(Current_Employee__c == TRUE,  RecordType.Name = &quot;Technical&quot;, RecordType.Name = &quot;Non-Technical&quot;)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Current Employee is false</fullName>
        <actions>
            <name>Non_Technical_when_Current_Employee</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>EMPLOYEE__c.Current_Employee__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>A workflow should be in place to set the record type to Non-Technical when ‘Current Employee’ is false</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Notify_Manager</fullName>
        <actions>
            <name>NOTIFY_MANAGER</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>EMPLOYEE__c.Is_Active__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>One to one role</fullName>
        <active>true</active>
        <booleanFilter>1 OR 2 OR 3 OR 4 OR 5</booleanFilter>
        <criteriaItems>
            <field>EMPLOYEE__c.Designation__c</field>
            <operation>equals</operation>
            <value>Project  Manager</value>
        </criteriaItems>
        <criteriaItems>
            <field>EMPLOYEE__c.Designation__c</field>
            <operation>equals</operation>
            <value>Developer</value>
        </criteriaItems>
        <criteriaItems>
            <field>EMPLOYEE__c.Designation__c</field>
            <operation>equals</operation>
            <value>Sr. Developer</value>
        </criteriaItems>
        <criteriaItems>
            <field>EMPLOYEE__c.Designation__c</field>
            <operation>equals</operation>
            <value>Solution Architect</value>
        </criteriaItems>
        <criteriaItems>
            <field>EMPLOYEE__c.Designation__c</field>
            <operation>equals</operation>
            <value>Technical Lead</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
