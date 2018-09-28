<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="a_in" />
        <signal name="b_in" />
        <signal name="XLXN_4" />
        <signal name="c_out" />
        <signal name="sum" />
        <port polarity="Input" name="a_in" />
        <port polarity="Input" name="b_in" />
        <port polarity="Output" name="c_out" />
        <port polarity="Output" name="sum" />
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="b_in" name="I0" />
            <blockpin signalname="a_in" name="I1" />
            <blockpin signalname="c_out" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_2">
            <blockpin signalname="b_in" name="I0" />
            <blockpin signalname="a_in" name="I1" />
            <blockpin signalname="sum" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1632" y="1232" name="XLXI_1" orien="R0" />
        <instance x="1632" y="1456" name="XLXI_2" orien="R0" />
        <branch name="a_in">
            <wire x2="1488" y1="1104" y2="1104" x1="1392" />
            <wire x2="1632" y1="1104" y2="1104" x1="1488" />
            <wire x2="1488" y1="1104" y2="1328" x1="1488" />
            <wire x2="1632" y1="1328" y2="1328" x1="1488" />
        </branch>
        <branch name="b_in">
            <wire x2="1552" y1="1392" y2="1392" x1="1408" />
            <wire x2="1632" y1="1392" y2="1392" x1="1552" />
            <wire x2="1632" y1="1168" y2="1168" x1="1552" />
            <wire x2="1552" y1="1168" y2="1392" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="1392" y="1104" name="a_in" orien="R180" />
        <iomarker fontsize="28" x="1408" y="1392" name="b_in" orien="R180" />
        <branch name="c_out">
            <wire x2="1920" y1="1136" y2="1136" x1="1888" />
        </branch>
        <iomarker fontsize="28" x="1920" y="1136" name="c_out" orien="R0" />
        <branch name="sum">
            <wire x2="1920" y1="1360" y2="1360" x1="1888" />
        </branch>
        <iomarker fontsize="28" x="1920" y="1360" name="sum" orien="R0" />
    </sheet>
</drawing>