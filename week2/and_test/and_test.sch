<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="a" />
        <signal name="b" />
        <signal name="x" />
        <port polarity="Input" name="a" />
        <port polarity="Input" name="b" />
        <port polarity="Output" name="x" />
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
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="b" name="I0" />
            <blockpin signalname="a" name="I1" />
            <blockpin signalname="x" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1440" y="1200" name="XLXI_1" orien="R0" />
        <branch name="a">
            <wire x2="1440" y1="1072" y2="1072" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="1408" y="1072" name="a" orien="R180" />
        <branch name="b">
            <wire x2="1440" y1="1136" y2="1136" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="1408" y="1136" name="b" orien="R180" />
        <branch name="x">
            <wire x2="1728" y1="1104" y2="1104" x1="1696" />
        </branch>
        <iomarker fontsize="28" x="1728" y="1104" name="x" orien="R0" />
    </sheet>
</drawing>