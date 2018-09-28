<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="c_in" />
        <signal name="a_0" />
        <signal name="b_0" />
        <signal name="s_0" />
        <signal name="s_1" />
        <signal name="a_1" />
        <signal name="b_1" />
        <signal name="a_2" />
        <signal name="b_2" />
        <signal name="s_2" />
        <signal name="s_3" />
        <signal name="c_out" />
        <signal name="a_3" />
        <signal name="b_3" />
        <port polarity="Input" name="c_in" />
        <port polarity="Input" name="a_0" />
        <port polarity="Input" name="b_0" />
        <port polarity="Output" name="s_0" />
        <port polarity="Output" name="s_1" />
        <port polarity="Input" name="a_1" />
        <port polarity="Input" name="b_1" />
        <port polarity="Input" name="a_2" />
        <port polarity="Input" name="b_2" />
        <port polarity="Output" name="s_2" />
        <port polarity="Output" name="s_3" />
        <port polarity="Output" name="c_out" />
        <port polarity="Input" name="a_3" />
        <port polarity="Input" name="b_3" />
        <blockdef name="one_bit_full_adder">
            <timestamp>2018-9-17T1:7:43</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="one_bit_full_adder" name="XLXI_1">
            <blockpin signalname="c_in" name="c_in" />
            <blockpin signalname="a_0" name="a_in" />
            <blockpin signalname="b_0" name="b_in" />
            <blockpin signalname="s_0" name="sum" />
            <blockpin signalname="XLXN_8" name="c_out" />
        </block>
        <block symbolname="one_bit_full_adder" name="XLXI_2">
            <blockpin signalname="XLXN_8" name="c_in" />
            <blockpin signalname="a_1" name="a_in" />
            <blockpin signalname="b_1" name="b_in" />
            <blockpin signalname="s_1" name="sum" />
            <blockpin signalname="XLXN_6" name="c_out" />
        </block>
        <block symbolname="one_bit_full_adder" name="XLXI_3">
            <blockpin signalname="XLXN_6" name="c_in" />
            <blockpin signalname="a_2" name="a_in" />
            <blockpin signalname="b_2" name="b_in" />
            <blockpin signalname="s_2" name="sum" />
            <blockpin signalname="XLXN_2" name="c_out" />
        </block>
        <block symbolname="one_bit_full_adder" name="XLXI_4">
            <blockpin signalname="XLXN_2" name="c_in" />
            <blockpin signalname="a_3" name="a_in" />
            <blockpin signalname="b_3" name="b_in" />
            <blockpin signalname="s_3" name="sum" />
            <blockpin signalname="c_out" name="c_out" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1312" y="1536" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1312" y="1872" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1312" y="1232" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1312" y="928" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_2">
            <wire x2="1200" y1="1600" y2="1712" x1="1200" />
            <wire x2="1312" y1="1712" y2="1712" x1="1200" />
            <wire x2="1760" y1="1600" y2="1600" x1="1200" />
            <wire x2="1760" y1="1504" y2="1504" x1="1696" />
            <wire x2="1760" y1="1504" y2="1600" x1="1760" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1760" y1="1280" y2="1280" x1="1200" />
            <wire x2="1200" y1="1280" y2="1376" x1="1200" />
            <wire x2="1312" y1="1376" y2="1376" x1="1200" />
            <wire x2="1712" y1="1200" y2="1200" x1="1696" />
            <wire x2="1760" y1="1200" y2="1200" x1="1712" />
            <wire x2="1760" y1="1200" y2="1280" x1="1760" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1760" y1="960" y2="960" x1="1200" />
            <wire x2="1200" y1="960" y2="1072" x1="1200" />
            <wire x2="1312" y1="1072" y2="1072" x1="1200" />
            <wire x2="1760" y1="896" y2="896" x1="1696" />
            <wire x2="1760" y1="896" y2="960" x1="1760" />
        </branch>
        <branch name="c_in">
            <wire x2="1312" y1="768" y2="768" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="1280" y="768" name="c_in" orien="R180" />
        <branch name="a_0">
            <wire x2="1312" y1="832" y2="832" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="1280" y="832" name="a_0" orien="R180" />
        <branch name="b_0">
            <wire x2="1312" y1="896" y2="896" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="1280" y="896" name="b_0" orien="R180" />
        <branch name="s_0">
            <wire x2="1728" y1="768" y2="768" x1="1696" />
        </branch>
        <iomarker fontsize="28" x="1728" y="768" name="s_0" orien="R0" />
        <branch name="s_1">
            <wire x2="1728" y1="1072" y2="1072" x1="1696" />
        </branch>
        <iomarker fontsize="28" x="1728" y="1072" name="s_1" orien="R0" />
        <branch name="a_1">
            <wire x2="1312" y1="1136" y2="1136" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="1280" y="1136" name="a_1" orien="R180" />
        <branch name="b_1">
            <wire x2="1312" y1="1200" y2="1200" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="1280" y="1200" name="b_1" orien="R180" />
        <branch name="a_2">
            <wire x2="1312" y1="1440" y2="1440" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="1280" y="1440" name="a_2" orien="R180" />
        <branch name="b_2">
            <wire x2="1312" y1="1504" y2="1504" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="1280" y="1504" name="b_2" orien="R180" />
        <branch name="s_2">
            <wire x2="1728" y1="1376" y2="1376" x1="1696" />
        </branch>
        <iomarker fontsize="28" x="1728" y="1376" name="s_2" orien="R0" />
        <branch name="s_3">
            <wire x2="1728" y1="1712" y2="1712" x1="1696" />
        </branch>
        <iomarker fontsize="28" x="1728" y="1712" name="s_3" orien="R0" />
        <branch name="c_out">
            <wire x2="1728" y1="1840" y2="1840" x1="1696" />
        </branch>
        <iomarker fontsize="28" x="1728" y="1840" name="c_out" orien="R0" />
        <branch name="a_3">
            <wire x2="1312" y1="1776" y2="1776" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="1280" y="1776" name="a_3" orien="R180" />
        <branch name="b_3">
            <wire x2="1312" y1="1840" y2="1840" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="1280" y="1840" name="b_3" orien="R180" />
    </sheet>
</drawing>