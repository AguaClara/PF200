<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="19008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Model Calculations" Type="Folder">
			<Item Name="calc_C_clarified.vi" Type="VI" URL="../calc_C_clarified.vi"/>
			<Item Name="calc_C_flocculated.vi" Type="VI" URL="../calc_C_flocculated.vi"/>
			<Item Name="calc_DOM_min.vi" Type="VI" URL="../calc_DOM_min.vi"/>
			<Item Name="calc_coag_dose.vi" Type="VI" URL="../calc_coag_dose.vi"/>
			<Item Name="calc_floc_sat.vi" Type="VI" URL="../calc_floc_sat.vi"/>
			<Item Name="solve_for_coag(updated).vi" Type="VI" URL="../solve_for_coag(updated).vi"/>
			<Item Name="enum_observed_clarified.ctl" Type="VI" URL="../enum_observed_clarified.ctl"/>
		</Item>
		<Item Name="send to ProCoDA" Type="Folder">
			<Item Name="send_flocculated_turbidity.vi" Type="VI" URL="../send_flocculated_turbidity.vi"/>
			<Item Name="send_floc_sat.vi" Type="VI" URL="../send_floc_sat.vi"/>
			<Item Name="send_C_DOM.vi" Type="VI" URL="../send_C_DOM.vi"/>
		</Item>
		<Item Name="Global Plantita Parameters.vi" Type="VI" URL="../Global Plantita Parameters.vi"/>
		<Item Name="Main_UI.vi" Type="VI" URL="../Main_UI.vi"/>
		<Item Name="update_coag_dose.vi" Type="VI" URL="../update_coag_dose.vi"/>
		<Item Name="update_past_RowData.vi" Type="VI" URL="../update_past_RowData.vi"/>
		<Item Name="data_logging.vi" Type="VI" URL="../data_logging.vi"/>
		<Item Name="ProCoDA_external_function.vi" Type="VI" URL="../ProCoDA_external_function.vi"/>
		<Item Name="construct_row.vi" Type="VI" URL="../construct_row.vi"/>
		<Item Name="give_buffer_vals.vit" Type="VI" URL="../give_buffer_vals.vit"/>
		<Item Name="store_last_RowData.vi" Type="VI" URL="../store_last_RowData.vi"/>
		<Item Name="RowData_Type.ctl" Type="VI" URL="../RowData_Type.ctl"/>
		<Item Name="control code.vit" Type="VI" URL="../../../Users/ssb238/Downloads/control code.vit"/>
		<Item Name="flow_to_coag_dose.vi" Type="VI" URL="../flow_to_coag_dose.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="FormatTime String.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/FormatTime String.vi"/>
				<Item Name="subElapsedTime.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/subElapsedTime.vi"/>
				<Item Name="NI_Gmath.lvlib" Type="Library" URL="/&lt;vilib&gt;/gmath/NI_Gmath.lvlib"/>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
