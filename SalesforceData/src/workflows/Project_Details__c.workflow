<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Dead_line_in_five_days</fullName>
        <description>Dead line is in five days</description>
        <protected>false</protected>
        <recipients>
            <field>Manager_Email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <recipient>disha.bhagchandani@eternussolutions.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>My_personal_email_templates/Dead_line_is_in_five_days</template>
    </alerts>
    <alerts>
        <fullName>Dead_line_is_in_five_days</fullName>
        <description>Dead line is in five days</description>
        <protected>false</protected>
        <recipients>
            <recipient>disha.bhagchandani@eternussolutions.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>My_personal_email_templates/Dead_line_is_in_five_days</template>
    </alerts>
    <alerts>
        <fullName>Five_days_Prior</fullName>
        <description>Five days Prior</description>
        <protected>false</protected>
        <recipients>
            <recipient>disha.bhagchandani@eternussolutions.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SalesNewCustomerEmail</template>
    </alerts>
    <alerts>
        <fullName>Notification_of_new_project_creation_and_calender_ASIIGNMENT</fullName>
        <ccEmails>disha.bhagchandani@eternussolutions.com</ccEmails>
        <description>Notification of new project creation and calender ASIGNMENT</description>
        <protected>false</protected>
        <recipients>
            <recipient>disha.bhagchandani@eternussolutions.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>My_personal_email_templates/New_Project_Created</template>
    </alerts>
    <alerts>
        <fullName>calender_email</fullName>
        <description>calender email</description>
        <protected>false</protected>
        <recipients>
            <recipient>disha.bhagchandani@eternussolutions.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>My_personal_email_templates/New_Project_Created</template>
    </alerts>
    <fieldUpdates>
        <fullName>Status_Closed_on_end_date</fullName>
        <field>Status__c</field>
        <literalValue>Closed</literalValue>
        <name>Status Closed on end date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>status_renew</fullName>
        <field>Status__c</field>
        <literalValue>Closed</literalValue>
        <name>status renew</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>CALENDER</fullName>
        <actions>
            <name>calender_email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Calender_Task</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>End_Date__c &gt;  Start_Date__c</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Dead line is in five days</fullName>
        <actions>
            <name>Dead_line_in_five_days</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Dead line is in five days</description>
        <formula>End_Date__c = TODAY() + 5</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>End Date</fullName>
        <active>true</active>
        <formula>IF( TODAY() = End_Date__c - 5,TRUE,FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Five_days_Prior</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Project_Details__c.End_Date__c</offsetFromField>
            <timeLength>-5</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>New Project created</fullName>
        <actions>
            <name>Notification_of_new_project_creation_and_calender_ASIIGNMENT</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>assign_to_system_admin</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>Start_Date__c =  TODAY()</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Status closed</fullName>
        <actions>
            <name>Status_Closed_on_end_date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>status_renew</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>End_Date__c = TODAY()</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <offsetFromField>Project_Details__c.End_Date__c</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>notification to remind</fullName>
        <active>true</active>
        <formula>End_Date__c = TODAY()+ 5</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <tasks>
        <fullName>Calender_Task</fullName>
        <assignedTo>disha.bhagchandani@eternussolutions.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Project_Details__c.Start_Date__c</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Calender Task</subject>
    </tasks>
    <tasks>
        <fullName>assign_to_system_admin</fullName>
        <assignedTo>disha.bhagchandani@eternussolutions.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>assign to system admin</subject>
    </tasks>
</Workflow>
