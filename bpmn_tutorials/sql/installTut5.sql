set define off
PROMPT >> Loading Exported Diagrams
PROMPT >> Loading Example "AA5 - Introducing Sub Processes"
begin
insert into flow_diagrams( dgrm_name, dgrm_content)
 values (
'AA5 - Introducing Sub Processes',
apex_string.join_clob(
  apex_t_varchar2(
  q'[<?xml version='1.0' encoding='UTF-8'?>]'
  , q'[<bpmn:definitions xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance' xmlns:bpmn='http://www.omg.org/spec/BPMN/20100524/MODEL' xmlns:bpmndi='http://www.omg.org/spec/BPMN/20100524/DI' xmlns:dc='http://www.omg.org/spec/DD/20100524/DC' xmlns:di='http://www.omg.org/spec/DD/20100524/DI' id='Definitions_1wzb475' targetNamespace='http://bpmn.io/schema/bpmn' exporter='bpmn-js (https://demo.bpmn.io)' exporterVersion='7.2.0'>]'
  , q'[  <bpmn:process id='Tutorial_AA5' name='Tutorial - Introducing Sub Processes' isExecutable='false'>]'
  , q'[    <bpmn:documentation>Tutorials by Richard Allen.]'
  , q'[Flowquest Consulting.]'
  , q'[twitter: @FlowquestR</bpmn:documentation>]'
  , q'[    <bpmn:startEvent id='Event_0iygv59'>]'
  , q'[      <bpmn:outgoing>Flow_1gz0sgq</bpmn:outgoing>]'
  , q'[    </bpmn:startEvent>]'
  , q'[    <bpmn:task id='Activity_13yt1ft' name='Tutorial 5&#10;SubProcesses'>]'
  , q'[      <bpmn:incoming>Flow_1gz0sgq</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_1ha31js</bpmn:outgoing>]'
  , q'[    </bpmn:task>]'
  , q'[    <bpmn:sequenceFlow id='Flow_1gz0sgq' sourceRef='Event_0iygv59' targetRef='Activity_13yt1ft' />]'
  , q'[    <bpmn:sequenceFlow id='Flow_1ha31js' sourceRef='Activity_13yt1ft' targetRef='Activity_1lt3f7j' />]'
  , q'[    <bpmn:subProcess id='Activity_1lt3f7j' name='SubProcess B'>]'
  , q'[      <bpmn:incoming>Flow_1ha31js</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_1trgt3r</bpmn:outgoing>]'
  , q'[      <bpmn:startEvent id='Event_0j57auc' name='A subProcess Starts&#10;with a Start Event'>]'
  , q'[        <bpmn:outgoing>Flow_1bfswcs</bpmn:outgoing>]'
  , q'[      </bpmn:startEvent>]'
  , q'[      <bpmn:task id='Activity_0kcgja9' name='B1'>]'
  , q'[        <bpmn:incoming>Flow_1bfswcs</bpmn:incoming>]'
  , q'[        <bpmn:outgoing>Flow_1dfsgk8</bpmn:outgoing>]'
  , q'[      </bpmn:task>]'
  , q'[      <bpmn:sequenceFlow id='Flow_1bfswcs' sourceRef='Event_0j57auc' targetRef='Activity_0kcgja9' />]'
  , q'[      <bpmn:sequenceFlow id='Flow_1dfsgk8' sourceRef='Activity_0kcgja9' targetRef='Gateway_0tapl6i' />]'
  , q'[      <bpmn:parallelGateway id='Gateway_0tapl6i' name='B Split'>]'
  , q'[        <bpmn:incoming>Flow_1dfsgk8</bpmn:incoming>]'
  , q'[        <bpmn:outgoing>Flow_14jrwrx</bpmn:outgoing>]'
  , q'[        <bpmn:outgoing>Flow_0sw8mct</bpmn:outgoing>]'
  , q'[      </bpmn:parallelGateway>]'
  , q'[      <bpmn:task id='Activity_1n7m2kj' name='B2'>]'
  , q'[        <bpmn:incoming>Flow_14jrwrx</bpmn:incoming>]'
  , q'[        <bpmn:outgoing>Flow_0l8zsga</bpmn:outgoing>]'
  , q'[      </bpmn:task>]'
  , q'[      <bpmn:sequenceFlow id='Flow_14jrwrx' sourceRef='Gateway_0tapl6i' targetRef='Activity_1n7m2kj' />]'
  , q'[      <bpmn:task id='Activity_1ox4cmk' name='B3'>]'
  , q'[        <bpmn:incoming>Flow_0l8zsga</bpmn:incoming>]'
  , q'[        <bpmn:outgoing>Flow_1smtq7r</bpmn:outgoing>]'
  , q'[      </bpmn:task>]'
  , q'[      <bpmn:sequenceFlow id='Flow_0l8zsga' sourceRef='Activity_1n7m2kj' targetRef='Activity_1ox4cmk' />]'
  , q'[      <bpmn:endEvent id='Event_1v77s5u' name='B2 B3 End'>]'
  , q'[        <bpmn:incoming>Flow_1smtq7r</bpmn:incoming>]'
  , q'[      </bpmn:endEvent>]'
  , q'[      <bpmn:sequenceFlow id='Flow_1smtq7r' sourceRef='Activity_1ox4cmk' targetRef='Event_1v77s5u' />]'
  , q'[      <bpmn:sequenceFlow id='Flow_0sw8mct' sourceRef='Gateway_0tapl6i' targetRef='Activity_1l75ys0' />]'
  , q'[      <bpmn:subProcess id='Activity_1l75ys0' name='SubProcess B4'>]'
  , q'[        <bpmn:incoming>Flow_0sw8mct</bpmn:incoming>]'
  , q'[        <bpmn:outgoing>Flow_0dxi3lp</bpmn:outgoing>]'
  , q'[        <bpmn:startEvent id='Event_094xygx' name='B4 Start'>]'
  , q'[          <bpmn:outgoing>Flow_1ji74dg</bpmn:outgoing>]'
  , q'[        </bpmn:startEvent>]'
  , q'[        <bpmn:task id='Activity_1rct9yd' name='B4A'>]'
  , q'[          <bpmn:incoming>Flow_1ji74dg</bpmn:incoming>]'
  , q'[          <bpmn:outgoing>Flow_0lkjrzz</bpmn:outgoing>]'
  , q'[        </bpmn:task>]'
  , q'[        <bpmn:sequenceFlow id='Flow_1ji74dg' sourceRef='Event_094xygx' targetRef='Activity_1rct9yd' />]'
  , q'[        <bpmn:task id='Activity_1nqf2t2' name='B4B'>]'
  , q'[          <bpmn:incoming>Flow_0lkjrzz</bpmn:incoming>]'
  , q'[          <bpmn:outgoing>Flow_0t7vhh2</bpmn:outgoing>]'
  , q'[        </bpmn:task>]'
  , q'[        <bpmn:sequenceFlow id='Flow_0lkjrzz' sourceRef='Activity_1rct9yd' targetRef='Activity_1nqf2t2' />]'
  , q'[        <bpmn:endEvent id='Event_0ytprrh' name='B4 end'>]'
  , q'[          <bpmn:incoming>Flow_0t7vhh2</bpmn:incoming>]'
  , q'[        </bpmn:endEvent>]'
  , q'[        <bpmn:sequenceFlow id='Flow_0t7vhh2' sourceRef='Activity_1nqf2t2' targetRef='Event_0ytprrh' />]'
  , q'[      </bpmn:subProcess>]'
  , q'[      <bpmn:task id='Activity_0ems563' name='B5'>]'
  , q'[        <bpmn:incoming>Flow_0dxi3lp</bpmn:incoming>]'
  , q'[        <bpmn:outgoing>Flow_03kjiig</bpmn:outgoing>]'
  , q'[      </bpmn:task>]'
  , q'[      <bpmn:sequenceFlow id='Flow_0dxi3lp' sourceRef='Activity_1l75ys0' targetRef='Activity_0ems563' />]'
  , q'[      <bpmn:endEvent id='Event_1mr01vo' name='B4 B5 end'>]'
  , q'[        <bpmn:incoming>Flow_03kjiig</bpmn:incoming>]'
  , q'[      </bpmn:endEvent>]'
  , q'[      <bpmn:sequenceFlow id='Flow_03kjiig' sourceRef='Activity_0ems563' targetRef='Event_1mr01vo' />]'
  , q'[      <bpmn:textAnnotation id='TextAnnotation_0mjqcjn'>]'
  , q'[        <bpmn:text>All of the active subflows have to complete for the sub process to complete, and then return to the parent subflow.</bpmn:text>]'
  , q'[      </bpmn:textAnnotation>]'
  , q'[      <bpmn:association id='Association_0n233kd' sourceRef='Event_1v77s5u' targetRef='TextAnnotation_0mjqcjn' />]'
  , q'[      <bpmn:textAnnotation id='TextAnnotation_09hooly'>]'
  , q'[        <bpmn:text>SubProcesses can be Nested</bpmn:text>]'
  , q'[      </bpmn:textAnnotation>]'
  , q'[      <bpmn:association id='Association_0tslhea' sourceRef='Activity_1l75ys0' targetRef='TextAnnotation_09hooly' />]'
  , q'[    </bpmn:subProcess>]'
  , q'[    <bpmn:task id='Activity_0n0h791' name='C'>]'
  , q'[      <bpmn:incoming>Flow_1trgt3r</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_0wppxk7</bpmn:outgoing>]'
  , q'[    </bpmn:task>]'
  , q'[    <bpmn:sequenceFlow id='Flow_1trgt3r' sourceRef='Activity_1lt3f7j' targetRef='Activity_0n0h791' />]'
  , q'[    <bpmn:endEvent id='Event_1h0lzcv' name='End'>]'
  , q'[      <bpmn:incoming>Flow_0wppxk7</bpmn:incoming>]'
  , q'[    </bpmn:endEvent>]'
  , q'[    <bpmn:sequenceFlow id='Flow_0wppxk7' sourceRef='Activity_0n0h791' targetRef='Event_1h0lzcv' />]'
  , q'[    <bpmn:textAnnotation id='TextAnnotation_0m1p9cx'>]'
  , q'[      <bpmn:text>Tutorial 5 - Introducing Sub Processes]'
  , q'[]'
  , q'[Sub Processes can encapsulate part of your business process, hiding the details when necessary.]'
  , q'[]'
  , q'[Run this model and look carefully to see how the subflows come and go, and what waits for what!</bpmn:text>]'
  , q'[    </bpmn:textAnnotation>]'
  , q'[    <bpmn:association id='Association_0ccwauj' sourceRef='Activity_1lt3f7j' targetRef='TextAnnotation_0m1p9cx' />]'
  , q'[  </bpmn:process>]'
  , q'[  <bpmndi:BPMNDiagram id='BPMNDiagram_1'>]'
  , q'[    <bpmndi:BPMNPlane id='BPMNPlane_1' bpmnElement='Tutorial_AA5'>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0wppxk7_di' bpmnElement='Flow_0wppxk7'>]'
  , q'[        <di:waypoint x='1900' y='480' />]'
  , q'[        <di:waypoint x='1962' y='480' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1trgt3r_di' bpmnElement='Flow_1trgt3r'>]'
  , q'[        <di:waypoint x='1700' y='480' />]'
  , q'[        <di:waypoint x='1800' y='480' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1ha31js_di' bpmnElement='Flow_1ha31js'>]'
  , q'[        <di:waypoint x='430' y='310' />]'
  , q'[        <di:waypoint x='530' y='310' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1gz0sgq_di' bpmnElement='Flow_1gz0sgq'>]'
  , q'[        <di:waypoint x='278' y='310' />]'
  , q'[        <di:waypoint x='330' y='310' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNShape id='Event_0iygv59_di' bpmnElement='Event_0iygv59'>]'
  , q'[        <dc:Bounds x='242' y='292' width='36' height='36' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_13yt1ft_di' bpmnElement='Activity_13yt1ft'>]'
  , q'[        <dc:Bounds x='330' y='270' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_0x9pws1_di' bpmnElement='Activity_1lt3f7j' isExpanded='true'>]'
  , q'[        <dc:Bounds x='530' y='210' width='1170' height='480' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_03kjiig_di' bpmnElement='Flow_03kjiig'>]'
  , q'[        <di:waypoint x='1550' y='490' />]'
  , q'[        <di:waypoint x='1602' y='490' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0dxi3lp_di' bpmnElement='Flow_0dxi3lp'>]'
  , q'[        <di:waypoint x='1400' y='490' />]'
  , q'[        <di:waypoint x='1450' y='490' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0sw8mct_di' bpmnElement='Flow_0sw8mct'>]'
  , q'[        <di:waypoint x='830' y='355' />]'
  , q'[        <di:waypoint x='830' y='450' />]'
  , q'[        <di:waypoint x='900' y='450' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1smtq7r_di' bpmnElement='Flow_1smtq7r'>]'
  , q'[        <di:waypoint x='1170' y='330' />]'
  , q'[        <di:waypoint x='1602' y='330' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0l8zsga_di' bpmnElement='Flow_0l8zsga'>]'
  , q'[        <di:waypoint x='1010' y='330' />]'
  , q'[        <di:waypoint x='1070' y='330' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_14jrwrx_di' bpmnElement='Flow_14jrwrx'>]'
  , q'[        <di:waypoint x='855' y='330' />]'
  , q'[        <di:waypoint x='910' y='330' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1dfsgk8_di' bpmnElement='Flow_1dfsgk8'>]'
  , q'[        <di:waypoint x='750' y='330' />]'
  , q'[        <di:waypoint x='805' y='330' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1bfswcs_di' bpmnElement='Flow_1bfswcs'>]'
  , q'[        <di:waypoint x='598' y='330' />]'
  , q'[        <di:waypoint x='650' y='330' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNShape id='Event_0j57auc_di' bpmnElement='Event_0j57auc'>]'
  , q'[        <dc:Bounds x='561.6666666666666' y='312' width='36' height='36' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='537' y='355' width='87' height='40' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_0kcgja9_di' bpmnElement='Activity_0kcgja9'>]'
  , q'[        <dc:Bounds x='650' y='290' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Gateway_0iissxc_di' bpmnElement='Gateway_0tapl6i'>]'
  , q'[        <dc:Bounds x='805' y='305' width='50' height='50' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='784' y='293' width='32' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_1n7m2kj_di' bpmnElement='Activity_1n7m2kj'>]'
  , q'[        <dc:Bounds x='910' y='290' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_1ox4cmk_di' bpmnElement='Activity_1ox4cmk'>]'
  , q'[        <dc:Bounds x='1070' y='290' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Event_1v77s5u_di' bpmnElement='Event_1v77s5u'>]'
  , q'[        <dc:Bounds x='1602' y='312' width='36' height='36' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='1594' y='355' width='53' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_19cs6tz_di' bpmnElement='Activity_1l75ys0' isExpanded='true'>]'
  , q'[        <dc:Bounds x='900' y='410' width='500' height='160' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0t7vhh2_di' bpmnElement='Flow_0t7vhh2'>]'
  , q'[        <di:waypoint x='1280' y='490' />]'
  , q'[        <di:waypoint x='1342' y='490' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0lkjrzz_di' bpmnElement='Flow_0lkjrzz'>]'
  , q'[        <di:waypoint x='1120' y='490' />]'
  , q'[        <di:waypoint x='1180' y='490' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1ji74dg_di' bpmnElement='Flow_1ji74dg'>]'
  , q'[        <di:waypoint x='968' y='490' />]'
  , q'[        <di:waypoint x='1020' y='490' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNShape id='Event_094xygx_di' bpmnElement='Event_094xygx'>]'
  , q'[        <dc:Bounds x='931.6666666666666' y='472' width='36' height='36' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='930' y='515' width='40' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_1rct9yd_di' bpmnElement='Activity_1rct9yd'>]'
  , q'[        <dc:Bounds x='1020' y='450' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_1nqf2t2_di' bpmnElement='Activity_1nqf2t2'>]'
  , q'[        <dc:Bounds x='1180' y='450' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Event_0ytprrh_di' bpmnElement='Event_0ytprrh'>]'
  , q'[        <dc:Bounds x='1342' y='472' width='36' height='36' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='1343' y='515' width='35' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_0ems563_di' bpmnElement='Activity_0ems563'>]'
  , q'[        <dc:Bounds x='1450' y='450' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Event_1mr01vo_di' bpmnElement='Event_1mr01vo'>]'
  , q'[        <dc:Bounds x='1602' y='472' width='36' height='36' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='1594' y='515' width='52' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='TextAnnotation_0mjqcjn_di' bpmnElement='TextAnnotation_0mjqcjn'>]'
  , q'[        <dc:Bounds x='1390' y='230' width='248' height='54' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='TextAnnotation_09hooly_di' bpmnElement='TextAnnotation_09hooly'>]'
  , q'[        <dc:Bounds x='1100' y='610' width='100' height='40' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNEdge id='Association_0n233kd_di' bpmnElement='Association_0n233kd'>]'
  , q'[        <di:waypoint x='1617' y='313' />]'
  , q'[        <di:waypoint x='1611' y='284' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Association_0tslhea_di' bpmnElement='Association_0tslhea'>]'
  , q'[        <di:waypoint x='1150' y='570' />]'
  , q'[        <di:waypoint x='1150' y='610' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNShape id='Activity_0n0h791_di' bpmnElement='Activity_0n0h791'>]'
  , q'[        <dc:Bounds x='1800' y='440' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Event_1h0lzcv_di' bpmnElement='Event_1h0lzcv'>]'
  , q'[        <dc:Bounds x='1962' y='462' width='36' height='36' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='1970' y='505' width='20' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='TextAnnotation_0m1p9cx_di' bpmnElement='TextAnnotation_0m1p9cx'>]'
  , q'[        <dc:Bounds x='820' y='40' width='490' height='110' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNEdge id='Association_0ccwauj_di' bpmnElement='Association_0ccwauj'>]'
  , q'[        <di:waypoint x='966' y='210' />]'
  , q'[        <di:waypoint x='929' y='150' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[    </bpmndi:BPMNPlane>]'
  , q'[  </bpmndi:BPMNDiagram>]'
  , q'[</bpmn:definitions>]'
  , q'[]'
  )
));
commit;
end;
/
 
PROMPT >> Example "AA5 - Introducing Sub Processes" loaded.
PROMPT >> ========================================================
