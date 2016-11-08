<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>FU01_AP01_ApprovalStatusToApproved</fullName>
        <description>Sets Account Approval Status to &quot;Approved&quot;</description>
        <field>ACC_ApprovalStatus__c</field>
        <literalValue>Approved</literalValue>
        <name>FU01 - AP01 - ApprovalStatus - Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>FU02_AP01_ApprovalStatusToSubmitted</fullName>
        <description>Sets the Account Approval Status to &quot;Submitted&quot;</description>
        <field>ACC_ApprovalStatus__c</field>
        <literalValue>Submitted</literalValue>
        <name>FU02 - AP01 - ApprovalStatus - Submitted</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>FU03_AP01_ApprovalStatusToRejected</fullName>
        <description>Sets Account Approval Status to &quot;Rejected&quot;</description>
        <field>ACC_ApprovalStatus__c</field>
        <literalValue>Rejected</literalValue>
        <name>FU03 - AP01 - ApprovalStatus - Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>FU04_ACC_RecordTypeToEssilor</fullName>
        <description>Sets Account Record Type to &quot;Essilor&quot;</description>
        <field>RecordTypeId</field>
        <lookupValue>ACC_RT_Essilor</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>FU04 - ACC - Record Type - Essilor</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>FU05_ACC_RecordTypeToBBGR</fullName>
        <description>Sets Account Record Type to &quot;BBGR&quot;</description>
        <field>RecordTypeId</field>
        <lookupValue>ACC_RT_BBGR</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>FU05 - ACC - Record Type - BBGR</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>FU06_ACC_RecordTypeToNikon</fullName>
        <description>Sets Account Record Type to &quot;Nikon&quot;</description>
        <field>RecordTypeId</field>
        <lookupValue>ACC_RT_Nikon</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>FU06 - ACC - Record Type - Nikon</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>FU07_ACC_RecordTypeToSignet</fullName>
        <description>Sets Account Record Type to &quot;Signet&quot;</description>
        <field>RecordTypeId</field>
        <lookupValue>ACC_RT_Signet</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>FU07 - ACC - Record Type - Signet</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>WF01_ACC_SetRecordTypeEssilor</fullName>
        <actions>
            <name>FU04_ACC_RecordTypeToEssilor</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>User.USER_BypassWorkflow__c</field>
            <operation>excludes</operation>
            <value>WF01 - ACC - SetRecordTypeEssilor</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.ACC_Network__c</field>
            <operation>equals</operation>
            <value>Essilor</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.Type</field>
            <operation>equals</operation>
            <value>Network Account</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.ACC_ApprovalStatus__c</field>
            <operation>notEqual</operation>
            <value>Not Submitted</value>
        </criteriaItems>
        <description>Set Account Record Type to Essilor upon saving</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>WF02_ACC_SetRecordTypeBBGR</fullName>
        <actions>
            <name>FU05_ACC_RecordTypeToBBGR</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>User.USER_BypassWorkflow__c</field>
            <operation>excludes</operation>
            <value>WF02 - ACC - SetRecordTypeBBGR</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.ACC_Network__c</field>
            <operation>equals</operation>
            <value>BBGR</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.ACC_ApprovalStatus__c</field>
            <operation>notEqual</operation>
            <value>Not Submitted</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.Type</field>
            <operation>equals</operation>
            <value>Network Account</value>
        </criteriaItems>
        <description>Set Account Record Type to BBGR upon saving</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>WF03_ACC_SetRecordTypeNikon</fullName>
        <actions>
            <name>FU06_ACC_RecordTypeToNikon</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>User.USER_BypassWorkflow__c</field>
            <operation>excludes</operation>
            <value>WF03 - ACC - SetRecordTypeNikon</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.ACC_Network__c</field>
            <operation>equals</operation>
            <value>Nikon</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.ACC_ApprovalStatus__c</field>
            <operation>notEqual</operation>
            <value>Not Submitted</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.Type</field>
            <operation>equals</operation>
            <value>Network Account</value>
        </criteriaItems>
        <description>Set Account Record Type to Nikon upon saving</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>WF04_ACC_SetRecordTypeSignet</fullName>
        <actions>
            <name>FU07_ACC_RecordTypeToSignet</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>User.USER_BypassWorkflow__c</field>
            <operation>excludes</operation>
            <value>WF04 - ACC - SetRecordTypeSignet</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.ACC_Network__c</field>
            <operation>equals</operation>
            <value>Signet</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.ACC_ApprovalStatus__c</field>
            <operation>notEqual</operation>
            <value>Not Submitted</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.Type</field>
            <operation>equals</operation>
            <value>Network Account</value>
        </criteriaItems>
        <description>Set Account Record Type to Signet upon saving</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>WF05_ACC_AutoApproveAccount</fullName>
        <actions>
            <name>FU01_AP01_ApprovalStatusToApproved</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>User.USER_BypassWorkflow__c</field>
            <operation>excludes</operation>
            <value>WF05 - ACC - AutoApproveAccount</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.Type</field>
            <operation>equals</operation>
            <value>Owner Account,Master Account</value>
        </criteriaItems>
        <criteriaItems>
            <field>User.ProfileId</field>
            <operation>equals</operation>
            <value>ESSILOR - Country Data Steward</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.ACC_ApprovalStatus__c</field>
            <operation>notEqual</operation>
            <value>Approved</value>
        </criteriaItems>
        <description>Autoupdate Account approval status to Approved if creator is a Country Data Steward (for Master and Owner Accounts only)</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
