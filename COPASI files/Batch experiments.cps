<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.42 (Build 284) (http://www.copasi.org) at 2025-05-08T16:34:11Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="42" versionDevel="284" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_13">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000163" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for irreversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_80" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_81" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Harmselator_1" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221417899999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-15T09:23:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-15T09:23:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="compartment" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="FP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="Pip" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="trig" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_2">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="DBF" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_3">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="FI" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_4">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="FIOH" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_5">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="PipAc" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_6">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="SI" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_7">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="SIOH" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_8">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="FIO" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_9">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="trigH" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_9">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="Initiation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-15T09:23:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-15T09:23:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5506" name="k1" value="0.0202"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Harmselator_1,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5506"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="Autocatalysis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="2"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5509" name="k1" value="0.602"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Harmselator_1,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5509"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_0"/>
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="Fast Inhib" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_2">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4675" name="k1" value="220"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Harmselator_1,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4675"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="Slow Inhib" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_3">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4676" name="k1" value="0.00275"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Harmselator_1,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4676"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Harmselator_1" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Harmselator_1,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Harmselator_1,Vector=Compartments[compartment],Vector=Metabolites[FP]" value="8.4309985060000006e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Harmselator_1,Vector=Compartments[compartment],Vector=Metabolites[Pip]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Harmselator_1,Vector=Compartments[compartment],Vector=Metabolites[trig]" value="2.4088567160000002e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Harmselator_1,Vector=Compartments[compartment],Vector=Metabolites[DBF]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Harmselator_1,Vector=Compartments[compartment],Vector=Metabolites[FI]" value="2.4088567160000001e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Harmselator_1,Vector=Compartments[compartment],Vector=Metabolites[FIOH]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Harmselator_1,Vector=Compartments[compartment],Vector=Metabolites[PipAc]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Harmselator_1,Vector=Compartments[compartment],Vector=Metabolites[SI]" value="1.6861997012000001e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Harmselator_1,Vector=Compartments[compartment],Vector=Metabolites[SIOH]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Harmselator_1,Vector=Compartments[compartment],Vector=Metabolites[FIO]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Harmselator_1,Vector=Compartments[compartment],Vector=Metabolites[trigH]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Harmselator_1,Vector=Reactions[Initiation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Harmselator_1,Vector=Reactions[Initiation],ParameterGroup=Parameters,Parameter=k1" value="0.020199999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Harmselator_1,Vector=Reactions[Autocatalysis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Harmselator_1,Vector=Reactions[Autocatalysis],ParameterGroup=Parameters,Parameter=k1" value="0.60199999999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Harmselator_1,Vector=Reactions[Fast Inhib]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Harmselator_1,Vector=Reactions[Fast Inhib],ParameterGroup=Parameters,Parameter=k1" value="220" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Harmselator_1,Vector=Reactions[Slow Inhib]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Harmselator_1,Vector=Reactions[Slow Inhib],ParameterGroup=Parameters,Parameter=k1" value="0.0027499999999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 8.4309985060000006e+22 2.4088567160000001e+22 0 0 0 1.6861997012000001e+23 0 2.4088567160000002e+21 0 0 1 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_17" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
        <Parameter name="Target Criterion" type="string" value="Distance and Rate"/>
      </Method>
    </Task>
    <Task key="Task_18" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_19" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_20" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_21" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_22" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="1"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Harmselator_1,Vector=Reactions[Autocatalysis],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
            <Parameter name="StartValue" type="float" value="1111.07898"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Harmselator_1,Vector=Reactions[Slow Inhib],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
            <Parameter name="StartValue" type="float" value="29.421430109999999"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Harmselator_1,Vector=Reactions[Fast Inhib],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
            <Parameter name="StartValue" type="float" value="220"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Harmselator_1,Vector=Reactions[Initiation],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
            <Parameter name="StartValue" type="float" value="0.020199999999999999"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <Parameter name="Use Time Sens" type="bool" value="0"/>
        <Parameter name="Time-Sens" type="cn" value=""/>
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Generations" type="unsignedInteger" value="2000"/>
        <Parameter name="Population Size" type="unsignedInteger" value="300"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Stop after # Stalled Generations" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_23" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_17"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_24" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_25" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
      </Method>
    </Task>
    <Task key="Task_26" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_19" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-13"/>
      </Method>
    </Task>
    <Task key="Task_27" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_20" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_28" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_29" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_21" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_17"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_30" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <ParameterGroup name="ListOfParameters">
        </ParameterGroup>
        <ParameterGroup name="ListOfTargets">
        </ParameterGroup>
      </Problem>
      <Method name="LSODA Sensitivities" type="Sensitivities(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_11" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_12" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_13" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_14" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_15" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_16" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_17" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_18" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_19" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_20" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_21" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
  </ListOfReports>
  <GUI>
  </GUI>
  <ListOfLayouts xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <Layout key="Layout_2" name="COPASI autolayout">
      <Dimensions width="518.00828684174701" height="244.219823202339"/>
      <ListOfMetabGlyphs>
        <MetaboliteGlyph key="Layout_3" name="layout_glyph_0" metabolite="">
          <BoundingBox>
            <Position x="71.949281233619999" y="181.82952123467999"/>
            <Dimensions width="28" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_4" name="layout_glyph_1" metabolite="">
          <BoundingBox>
            <Position x="0" y="114.296022328492"/>
            <Dimensions width="28" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_5" name="layout_glyph_2" metabolite="">
          <BoundingBox>
            <Position x="292.93595683486302" y="0"/>
            <Dimensions width="28" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_6" name="layout_glyph_3" metabolite="">
          <BoundingBox>
            <Position x="322.27603046270298" y="220.96754201204001"/>
            <Dimensions width="28" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_7" name="layout_glyph_4" metabolite="">
          <BoundingBox>
            <Position x="98.965396338468096" y="15.348823671762601"/>
            <Dimensions width="28" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_8" name="layout_glyph_5" metabolite="">
          <BoundingBox>
            <Position x="185.70970870719299" y="125.35625588428"/>
            <Dimensions width="28" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
      </ListOfMetabGlyphs>
      <ListOfReactionGlyphs>
        <ReactionGlyph key="Layout_9" name="layout_glyph_6" reaction="Reaction_0">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="255.12033463999299" y="63.078577446405703"/>
                <End x="244.39770982722601" y="75.614203034833693"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_10" name="layout_glyph_7" metaboliteGlyph="Layout_5" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="255.12033463999299" y="63.078577446405703"/>
                    <End x="287.93595683486302" y="30.896214185728201"/>
                    <BasePoint1 x="265.84295945276" y="50.542951857977798"/>
                    <BasePoint2 x="279.57011434700399" y="37.585676624746"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_11" name="layout_glyph_8" metaboliteGlyph="Layout_8" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="244.39770982722601" y="75.614203034833693"/>
                    <End x="212.31246551638199" y="120.35625588428"/>
                    <BasePoint1 x="233.675085014459" y="88.149828623261698"/>
                    <BasePoint2 x="220.31311906222899" y="107.386948650878"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_12" name="layout_glyph_9" reaction="Reaction_2">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="110.338058307978" y="111.460052697885"/>
                <End x="99.701767117376093" y="119.231075898241"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_13" name="layout_glyph_10" metaboliteGlyph="Layout_8" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="110.338058307978" y="111.460052697885"/>
                    <End x="180.70970870719299" y="130.749229661757"/>
                    <BasePoint1 x="120.97434949858" y="103.689029497528"/>
                    <BasePoint2 x="153.50110190053701" y="115.276373779553"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_14" name="layout_glyph_11" metaboliteGlyph="Layout_7" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="110.338058307978" y="111.460052697885"/>
                    <End x="115.01233861353801" y="48.348823671762602"/>
                    <BasePoint1 x="120.97434949858" y="103.689029497528"/>
                    <BasePoint2 x="120.652416853709" y="74.076170784556098"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_15" name="layout_glyph_12" metaboliteGlyph="Layout_3" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="99.701767117376093" y="119.231075898241"/>
                    <End x="86.809515386409601" y="176.82952123467999"/>
                    <BasePoint1 x="89.065475926773999" y="127.002099098597"/>
                    <BasePoint2 x="85.278422858941298" y="153.85856596672801"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_16" name="layout_glyph_13" metaboliteGlyph="Layout_4" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="99.701767117376093" y="119.231075898241"/>
                    <End x="33" y="127.96851436208701"/>
                    <BasePoint1 x="89.065475926773999" y="127.002099098597"/>
                    <BasePoint2 x="58.373665165736497" y="129.42806253043199"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_17" name="layout_glyph_14" reaction="Reaction_3">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="265.45629775367303" y="182.63697770626399"/>
                <End x="279.11292992922398" y="192.19810631903999"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_18" name="layout_glyph_15" metaboliteGlyph="Layout_8" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="265.45629775367303" y="182.63697770626399"/>
                    <End x="218.70970870719299" y="151.65559935585199"/>
                    <BasePoint1 x="251.79966557812199" y="173.07584909348799"/>
                    <BasePoint2 x="231.840529098769" y="159.97544207147601"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_19" name="layout_glyph_16" metaboliteGlyph="Layout_6" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="279.11292992922398" y="192.19810631903999"/>
                    <End x="317.27603046270298" y="220.46492071597501"/>
                    <BasePoint1 x="292.76956210477499" y="201.759234931816"/>
                    <BasePoint2 x="308.43695432762701" y="213.50235997709001"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_20" name="layout_glyph_17" reaction="Reaction_1">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="161.329118902494" y="210.393200929768"/>
                <End x="167.017140276172" y="207.569537662248"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_21" name="layout_glyph_18" metaboliteGlyph="Layout_8" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="161.329118902494" y="210.393200929768"/>
                    <End x="188.37344122289599" y="158.35625588427999"/>
                    <BasePoint1 x="155.64109752881501" y="213.216864197288"/>
                    <BasePoint2 x="170.58526403243599" y="186.492475857664"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_22" name="layout_glyph_19" metaboliteGlyph="Layout_3" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="161.329118902494" y="210.393200929768"/>
                    <End x="104.94928123362" y="200.569812618252"/>
                    <BasePoint1 x="155.64109752881501" y="213.216864197288"/>
                    <BasePoint2 x="128.87318403779801" y="207.59925422465"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_23" name="layout_glyph_20" metaboliteGlyph="Layout_8" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="167.017140276172" y="207.569537662248"/>
                    <End x="191.86310544237199" y="158.35625588427999"/>
                    <BasePoint1 x="172.70516164985099" y="204.74587439472799"/>
                    <BasePoint2 x="183.70613888953099" y="180.845149322624"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
      </ListOfReactionGlyphs>
      <ListOfTextGlyphs>
        <TextGlyph key="Layout_24" name="layout_glyph_21" graphicalObject="Layout_3" text="unset">
          <BoundingBox>
            <Position x="71.949281233619999" y="181.82952123467999"/>
            <Dimensions width="24" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_25" name="layout_glyph_22" graphicalObject="Layout_4" text="unset">
          <BoundingBox>
            <Position x="0" y="114.296022328492"/>
            <Dimensions width="24" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_26" name="layout_glyph_23" graphicalObject="Layout_5" text="unset">
          <BoundingBox>
            <Position x="292.93595683486302" y="0"/>
            <Dimensions width="24" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_27" name="layout_glyph_24" graphicalObject="Layout_6" text="unset">
          <BoundingBox>
            <Position x="322.27603046270298" y="220.96754201204001"/>
            <Dimensions width="24" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_28" name="layout_glyph_25" graphicalObject="Layout_7" text="unset">
          <BoundingBox>
            <Position x="98.965396338468096" y="15.348823671762601"/>
            <Dimensions width="24" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_29" name="layout_glyph_26" graphicalObject="Layout_8" text="unset">
          <BoundingBox>
            <Position x="185.70970870719299" y="125.35625588428"/>
            <Dimensions width="24" height="24"/>
          </BoundingBox>
        </TextGlyph>
      </ListOfTextGlyphs>
    </Layout>
    <ListOfGlobalRenderInformation>
      <RenderInformation key="GlobalRenderInformation_0" backgroundColor="#FFFFFFFF">
        <ListOfColorDefinitions>
          <ColorDefinition id="black" value="#000000"/>
          <ColorDefinition id="white" value="#ffffff"/>
          <ColorDefinition id="transparent" value="#ffffff00"/>
          <ColorDefinition id="EmptySetOutline" value="#808080"/>
          <ColorDefinition id="EmptySetGradientStart" value="#ffffff"/>
          <ColorDefinition id="EmptySetGradientEnd" value="#d3d3d3"/>
          <ColorDefinition id="CompartmentBorder" value="#e69600b0"/>
          <ColorDefinition id="CloneMarkerColor" value="#ffa500"/>
          <ColorDefinition id="CurveColor" value="#000000a0"/>
          <ColorDefinition id="ModulationCurveColor" value="#0000a0a0"/>
        </ListOfColorDefinitions>
        <ListOfGradientDefinitions>
          <LinearGradient id="cloneMarker" spreadMethod="pad" x1="50%" y1="0" x2="50%" y2="100%" z2="100%">
            <Stop offset="0" stop-color="transparent"/>
            <Stop offset="0.75" stop-color="transparent"/>
            <Stop offset="0.76" stop-color="CloneMarkerColor"/>
            <Stop offset="1" stop-color="CloneMarkerColor"/>
          </LinearGradient>
          <LinearGradient id="EmptySetGradient" spreadMethod="pad" x1="0" y1="0" x2="100%" y2="100%" z2="100%">
            <Stop offset="0" stop-color="EmptySetGradientStart"/>
            <Stop offset="100%" stop-color="EmptySetGradientEnd"/>
          </LinearGradient>
        </ListOfGradientDefinitions>
        <ListOfLineEndings>
          <LineEnding id="ActivationHead" enableRotationalMapping="true">
            <BoundingBox>
              <Position x="-12" y="-6"/>
              <Dimensions width="12" height="12"/>
            </BoundingBox>
            <Group stroke="CurveColor" stroke-width="1" fill="white" text-anchor="start" vtext-anchor="top">
              <Ellipse stroke="black" stroke-width="1" cx="50%" cy="50%" rx="50%" ry="50%"/>
            </Group>
          </LineEnding>
          <LineEnding id="TransitionHead" enableRotationalMapping="true">
            <BoundingBox>
              <Position x="-8" y="-6"/>
              <Dimensions width="12" height="12"/>
            </BoundingBox>
            <Group stroke="CurveColor" stroke-width="0.001" fill="CurveColor" text-anchor="start" vtext-anchor="top">
              <Polygon fill="CurveColor">
                <ListOfElements>
                  <Element x="0" y="0"/>
                  <Element x="100%" y="50%"/>
                  <Element x="0" y="100%"/>
                  <Element x="33%" y="50%"/>
                  <Element x="0" y="0"/>
                </ListOfElements>
              </Polygon>
            </Group>
          </LineEnding>
          <LineEnding id="ModulationHead" enableRotationalMapping="true">
            <BoundingBox>
              <Position x="-5" y="-5"/>
              <Dimensions width="10" height="10"/>
            </BoundingBox>
            <Group stroke="ModulationCurveColor" stroke-width="1" fill="ModulationCurveColor" text-anchor="start" vtext-anchor="top">
              <Ellipse cx="50%" cy="50%" rx="45%" ry="45%"/>
            </Group>
          </LineEnding>
          <LineEnding id="InhibitionHead" enableRotationalMapping="true">
            <BoundingBox>
              <Position x="-0.5" y="-4"/>
              <Dimensions width="0.59999999999999998" height="8"/>
            </BoundingBox>
            <Group stroke="black" stroke-width="2" fill="black" text-anchor="start" vtext-anchor="top">
              <Polygon>
                <ListOfElements>
                  <Element x="0" y="0"/>
                  <Element x="0.3" y="0"/>
                  <Element x="0.3" y="8"/>
                  <Element x="0" y="8"/>
                </ListOfElements>
              </Polygon>
            </Group>
          </LineEnding>
        </ListOfLineEndings>
        <ListOfStyles>
          <Style key="GlobalStyle_0" roleList="invisible">
            <Group stroke="#ffffff00" stroke-width="0" fill="#ffffff00" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
            </Group>
          </Style>
          <Style key="GlobalStyle_1" roleList="defaultText" typeList="TEXTGLYPH">
            <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Verdana" text-anchor="middle" vtext-anchor="middle">
            </Group>
          </Style>
          <Style key="GlobalStyle_2" roleList="sidesubstrate substrate" typeList="REACTIONGLYPH">
            <Group stroke="CurveColor" stroke-width="3" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
            </Group>
          </Style>
          <Style key="GlobalStyle_3" roleList="SBO-0000169 inhibition inhibitor">
            <Group stroke="CurveColor" stroke-width="3" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="InhibitionHead">
            </Group>
          </Style>
          <Style key="GlobalStyle_4" roleList="SBO-0000168 modifier">
            <Group stroke="ModulationCurveColor" stroke-width="3" fill="white" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="ModulationHead">
            </Group>
          </Style>
          <Style key="GlobalStyle_5" roleList="SBO-0000172 activator catalysis">
            <Group stroke="CurveColor" stroke-width="3" fill="white" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="ActivationHead">
            </Group>
          </Style>
          <Style key="GlobalStyle_6" roleList="product sideproduct" typeList="product sideproduct">
            <Group stroke="CurveColor" stroke-width="3" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="TransitionHead">
            </Group>
          </Style>
          <Style key="GlobalStyle_7" roleList="NO-SBO SBO-0000285" typeList="SPECIESGLYPH">
            <Group stroke-width="0" fill="#a0e0a030" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
              <Rectangle x="0" y="0" width="100%" height="100%"/>
            </Group>
          </Style>
          <Style key="GlobalStyle_8" roleList="SBO-0000289" typeList="COMPARTMENTGLYPH">
            <Group stroke="CompartmentBorder" stroke-width="7" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
              <Rectangle x="0" y="0" width="100%" height="100%" rx="20" ry="20"/>
            </Group>
          </Style>
          <Style key="GlobalStyle_9" typeList="ANY">
            <Group stroke="black" stroke-width="0" fill="#f0707070" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
              <Rectangle x="0" y="0" width="100%" height="100%"/>
            </Group>
          </Style>
        </ListOfStyles>
      </RenderInformation>
      <RenderInformation key="GlobalRenderInformation_1" backgroundColor="#FFFFFFFF">
        <ListOfColorDefinitions>
          <ColorDefinition id="black" value="#000000"/>
          <ColorDefinition id="white" value="#ffffff"/>
          <ColorDefinition id="transparent" value="#ffffff00"/>
          <ColorDefinition id="EmptySetOutline" value="#808080"/>
          <ColorDefinition id="EmptySetGradientStart" value="#ffffff"/>
          <ColorDefinition id="EmptySetGradientEnd" value="#d3d3d3"/>
          <ColorDefinition id="CompartmentBorder" value="#e69600b0"/>
          <ColorDefinition id="CloneMarkerColor" value="#ffa500"/>
          <ColorDefinition id="CurveColor" value="#000000a0"/>
          <ColorDefinition id="ModulationCurveColor" value="#0000a0a0"/>
        </ListOfColorDefinitions>
        <ListOfGradientDefinitions>
          <LinearGradient id="cloneMarker" spreadMethod="pad" x1="50%" y1="0" x2="50%" y2="100%" z2="100%">
            <Stop offset="0" stop-color="transparent"/>
            <Stop offset="0.75" stop-color="transparent"/>
            <Stop offset="0.76" stop-color="CloneMarkerColor"/>
            <Stop offset="1" stop-color="CloneMarkerColor"/>
          </LinearGradient>
          <LinearGradient id="EmptySetGradient" spreadMethod="pad" x1="0" y1="0" x2="100%" y2="100%" z2="100%">
            <Stop offset="0" stop-color="EmptySetGradientStart"/>
            <Stop offset="100%" stop-color="EmptySetGradientEnd"/>
          </LinearGradient>
        </ListOfGradientDefinitions>
        <ListOfLineEndings>
          <LineEnding id="ActivationHead" enableRotationalMapping="true">
            <BoundingBox>
              <Position x="-12" y="-6"/>
              <Dimensions width="12" height="12"/>
            </BoundingBox>
            <Group stroke="CurveColor" stroke-width="1" fill="white" text-anchor="start" vtext-anchor="top">
              <Ellipse stroke="black" stroke-width="1" cx="50%" cy="50%" rx="50%" ry="50%"/>
            </Group>
          </LineEnding>
          <LineEnding id="TransitionHead" enableRotationalMapping="true">
            <BoundingBox>
              <Position x="-8" y="-6"/>
              <Dimensions width="12" height="12"/>
            </BoundingBox>
            <Group stroke="CurveColor" stroke-width="0.001" fill="CurveColor" text-anchor="start" vtext-anchor="top">
              <Polygon fill="CurveColor">
                <ListOfElements>
                  <Element x="0" y="0"/>
                  <Element x="100%" y="50%"/>
                  <Element x="0" y="100%"/>
                  <Element x="33%" y="50%"/>
                  <Element x="0" y="0"/>
                </ListOfElements>
              </Polygon>
            </Group>
          </LineEnding>
          <LineEnding id="ModulationHead" enableRotationalMapping="true">
            <BoundingBox>
              <Position x="-5" y="-5"/>
              <Dimensions width="10" height="10"/>
            </BoundingBox>
            <Group stroke="ModulationCurveColor" stroke-width="1" fill="ModulationCurveColor" text-anchor="start" vtext-anchor="top">
              <Ellipse cx="50%" cy="50%" rx="45%" ry="45%"/>
            </Group>
          </LineEnding>
          <LineEnding id="InhibitionHead" enableRotationalMapping="true">
            <BoundingBox>
              <Position x="-0.5" y="-4"/>
              <Dimensions width="0.59999999999999998" height="8"/>
            </BoundingBox>
            <Group stroke="black" stroke-width="2" fill="black" text-anchor="start" vtext-anchor="top">
              <Polygon>
                <ListOfElements>
                  <Element x="0" y="0"/>
                  <Element x="0.3" y="0"/>
                  <Element x="0.3" y="8"/>
                  <Element x="0" y="8"/>
                </ListOfElements>
              </Polygon>
            </Group>
          </LineEnding>
        </ListOfLineEndings>
        <ListOfStyles>
          <Style key="GlobalStyle_10" roleList="invisible">
            <Group stroke="#ffffff00" stroke-width="0" fill="#ffffff00" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
            </Group>
          </Style>
          <Style key="GlobalStyle_11" roleList="defaultText" typeList="TEXTGLYPH">
            <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Verdana" text-anchor="middle" vtext-anchor="middle">
            </Group>
          </Style>
          <Style key="GlobalStyle_12" roleList="sidesubstrate substrate" typeList="REACTIONGLYPH">
            <Group stroke="CurveColor" stroke-width="3" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
            </Group>
          </Style>
          <Style key="GlobalStyle_13" roleList="SBO-0000169 inhibition inhibitor">
            <Group stroke="CurveColor" stroke-width="3" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="InhibitionHead">
            </Group>
          </Style>
          <Style key="GlobalStyle_14" roleList="SBO-0000168 modifier">
            <Group stroke="ModulationCurveColor" stroke-width="3" fill="white" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="ModulationHead">
            </Group>
          </Style>
          <Style key="GlobalStyle_15" roleList="SBO-0000172 activator catalysis">
            <Group stroke="CurveColor" stroke-width="3" fill="white" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="ActivationHead">
            </Group>
          </Style>
          <Style key="GlobalStyle_16" roleList="product sideproduct" typeList="product sideproduct">
            <Group stroke="CurveColor" stroke-width="3" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="TransitionHead">
            </Group>
          </Style>
          <Style key="GlobalStyle_17" roleList="NO-SBO SBO-0000285" typeList="SPECIESGLYPH">
            <Group stroke-width="0" fill="#a0e0a030" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
              <Rectangle x="0" y="0" width="100%" height="100%"/>
            </Group>
          </Style>
          <Style key="GlobalStyle_18" roleList="SBO-0000289" typeList="COMPARTMENTGLYPH">
            <Group stroke="CompartmentBorder" stroke-width="7" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
              <Rectangle x="0" y="0" width="100%" height="100%" rx="20" ry="20"/>
            </Group>
          </Style>
          <Style key="GlobalStyle_19" typeList="ANY">
            <Group stroke="black" stroke-width="0" fill="#f0707070" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
              <Rectangle x="0" y="0" width="100%" height="100%"/>
            </Group>
          </Style>
        </ListOfStyles>
      </RenderInformation>
    </ListOfGlobalRenderInformation>
  </ListOfLayouts>
  <SBMLReference file="Flow kinetic model.xml">
    <SBMLMap SBMLid="Autocatalysis" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="DBF" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="FI" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="FIO" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="FIOH" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="FP" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="Fast_Inhib" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="Pip" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="PipAc" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="SI" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="SIOH" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="Slow_Inhib" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="Trig" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="compartment" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="trig" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="trigH" COPASIkey="Metabolite_10"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_0">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_5" name="second" symbol="s">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_4">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_13" name="Avogadro" symbol="Avogadro">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_12">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="item" symbol="#">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_16">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        #
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_35" name="liter" symbol="l">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_34">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_41" name="mole" symbol="mol">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_40">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
