<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:llrp="http://www.llrp.org/ltk/schema/core/encoding/binary/1.0"
  xmlns:h="http://www.w3.org/1999/xhtml">
  <xsl:output omit-xml-declaration='yes' method='text' indent='yes'/>
  <xsl:template match="/llrp:llrpdef">
    /*
    ***************************************************************************
    *  Copyright 2007 Impinj, Inc.
    *
    *  Licensed under the Apache License, Version 2.0 (the "License");
    *  you may not use this file except in compliance with the License.
    *  You may obtain a copy of the License at
    *
    *      http://www.apache.org/licenses/LICENSE-2.0
    *
    *  Unless required by applicable law or agreed to in writing, software
    *  distributed under the License is distributed on an "AS IS" BASIS,
    *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    *  See the License for the specific language governing permissions and
    *  limitations under the License.
    *
    ***************************************************************************
    */


    /*
    ***************************************************************************
    *
    *  This code is generated by Impinj LLRP .Net generator. Modification is
    *  not recommended.
    *
    ***************************************************************************
    */

    /*
    ***************************************************************************
    * File Name:       LLRPEnum.cs
    *
    * Version          1.0
    * Author:          Impinj
    * Organization:    Impinj
    * Date:            Jan. 18, 2008
    *
    * Description:     This file contains LLRP enumeration definitions
    ***************************************************************************
    */


    using System;
    using System.Xml.Serialization;
    using System.Collections;
    using System.Xml.Schema;
    using System.ComponentModel;

    namespace LLRP
    {
    //LLRP Enumeration definitions

    <!--This portion defines the common enumerators used by LLRP-->
  <xsl:for-each select="llrp:enumerationDefinition">
    /// <xsl:text disable-output-escaping="yes">&lt;summary</xsl:text><xsl:text disable-output-escaping="yes">&gt;</xsl:text>
    /// <xsl:for-each select ="llrp:annotation/llrp:description/h:p"><xsl:value-of select="."/></xsl:for-each>
    /// <xsl:text disable-output-escaping="yes">&lt;/summary</xsl:text><xsl:text disable-output-escaping="yes">&gt;</xsl:text>
    [Serializable]
    public enum ENUM_<xsl:value-of select="@name"/>
  {<xsl:for-each select="llrp:entry">
    [XmlEnum(Name="<xsl:value-of select="@name"/>")]<xsl:value-of select="@name"/> = <xsl:value-of select="@value"/>,</xsl:for-each>
  }
</xsl:for-each>
    

  [Serializable]
  public enum ENUM_LLRP_MSG_TYPE
  {
    <xsl:for-each select="llrp:messageDefinition">
      <xsl:value-of select="@name"/> = <xsl:value-of select="@typeNum"/>,
    </xsl:for-each>
  }

  [Serializable]
  public enum ENUM_LLRP_PARAM_TYPE
  {
    <xsl:for-each select="llrp:parameterDefinition">
      <xsl:value-of select="@name"/> = <xsl:value-of select="@typeNum"/>,
    </xsl:for-each>
  }
}
</xsl:template>
</xsl:stylesheet>