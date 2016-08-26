<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>DNC_queue</fullName>
        <description>DNC</description>
        <protected>false</protected>
        <recipients>
            <recipient>disha.bhagchandani@eternussolutions.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SalesNewCustomerEmail</template>
    </alerts>
    <alerts>
        <fullName>Follow_up_of_date</fullName>
        <description>Follow up of date</description>
        <protected>false</protected>
        <recipients>
            <recipient>disha.bhagchandani@eternussolutions.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>My_personal_email_templates/Time_Based_Follow_Up</template>
    </alerts>
    <alerts>
        <fullName>lead_record_type_is_DNC</fullName>
        <description>lead record type is DNC</description>
        <protected>false</protected>
        <recipients>
            <recipient>disha.bhagchandani@eternussolutions.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SalesNewCustomerEmail</template>
    </alerts>
    <fieldUpdates>
        <fullName>Update_DNC</fullName>
        <field>DNC__c</field>
        <literalValue>1</literalValue>
        <name>Update DNC</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_No_Number</fullName>
        <field>No_Number__c</field>
        <literalValue>1</literalValue>
        <name>Update No Number</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Follow up date</fullName>
        <actions>
            <name>Follow_up_of_date</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>Follow_up_of_date__c &lt;  TODAY()</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Lead DNC Rule</fullName>
        <actions>
            <name>lead_record_type_is_DNC</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_DNC</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.RecordTypeId</field>
            <operation>equals</operation>
            <value>Lead DNC</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Lead Landline</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Lead.RecordTypeId</field>
            <operation>equals</operation>
            <value>Lead Landline</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Lead No Number Rule</fullName>
        <actions>
            <name>Update_No_Number</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.RecordTypeId</field>
            <operation>equals</operation>
            <value>Lead No Number</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Lead queue</fullName>
        <actions>
            <name>DNC_queue</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.DNC__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>cehck</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Lead.City</field>
            <operation>equals</operation>
            <value>pune</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>dnc</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Lead.DNC__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>wedwa</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Lead.DNC__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
