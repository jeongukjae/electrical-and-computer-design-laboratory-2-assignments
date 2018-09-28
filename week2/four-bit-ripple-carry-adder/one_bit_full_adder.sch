<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="c_in" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="sum" />
        <signal name="a_in" />
        <signal name="b_in" />
        <signal name="c_out" />
        <port polarity="Input" name="c_in" />
        <port polarity="Output" name="sum" />
        <port polarity="Input" name="a_in" />
        <port polarity="Input" name="b_in" />
        <port polarity="Output" name="c_out" />
        <blockdef name="half_adder">
            <timestamp>2018-9-17T0:53:57</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <block symbolname="half_adder" name="XLXI_1">
            <blockpin signalname="a_in" name="a_in" />
            <blockpin signalname="b_in" name="b_in" />
            <blockpin signalname="XLXN_3" name="c_out" />
            <blockpin signalname="XLXN_1" name="sum" />
        </block>
        <block symbolname="half_adder" name="XLXI_2">
            <blockpin signalname="c_in" name="a_in" />
            <blockpin signalname="XLXN_1" name="b_in" />
            <blockpin signalname="XLXN_4" name="c_out" />
            <blockpin signalname="sum" name="sum" />
        </block>
        <block symbolname="or2" name="XLXI_3">
            <blockpin signalname="XLXN_4" name="I0" />
            <blockpin signalname="XLXN_3" name="I1" />
            <blockpin signalname="c_out" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1376" y="1008" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1936" y="1008" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1936" y1="976" y2="976" x1="1760" />
        </branch>
        <branch name="c_in">
            <wire x2="1920" y1="1056" y2="1056" x1="1344" />
            <wire x2="1936" y1="912" y2="912" x1="1920" />
            <wire x2="1920" y1="912" y2="1056" x1="1920" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1808" y1="912" y2="912" x1="1760" />
            <wire x2="1808" y1="848" y2="912" x1="1808" />
            <wire x2="2400" y1="848" y2="848" x1="1808" />
        </branch>
        <instance x="2400" y="976" name="XLXI_3" orien="R0" />
        <branch name="XLXN_4">
            <wire x2="2400" y1="912" y2="912" x1="2320" />
        </branch>
        <branch name="sum">
            <wire x2="2336" y1="976" y2="976" x1="2320" />
            <wire x2="2688" y1="976" y2="976" x1="2336" />
        </branch>
        <branch name="a_in">
            <wire x2="1376" y1="912" y2="912" x1="1344" />
        </branch>
        <iomarker fontsize="28" x="1344" y="912" name="a_in" orien="R180" />
        <branch name="b_in">
            <wire x2="1376" y1="976" y2="976" x1="1344" />
        </branch>
        <iomarker fontsize="28" x="1344" y="976" name="b_in" orien="R180" />
        <branch name="c_out">
            <wire x2="2688" y1="880" y2="880" x1="2656" />
        </branch>
        <iomarker fontsize="28" x="2688" y="880" name="c_out" orien="R0" />
        <iomarker fontsize="28" x="2688" y="976" name="sum" orien="R0" />
        <iomarker fontsize="28" x="1344" y="1056" name="c_in" orien="R180" />
    </sheet>
</drawing>