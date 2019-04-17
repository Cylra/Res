<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<style type="text/css">
.basic-grey h2
{
	font-size: 25px;
	padding: 0px 0px 10px 40px;
	display: block;
	/*border-bottom: 1px solid #E4E4E4;*/
	margin: -10px -15px 30px -10px;;
	color: #000000;
}
	
</style>
<div class="container" align="center">
	<table cellpadding="0" cellspacing="0" border="0" align="center"
		bgcolor="#FFFFFF">
		
		<tr align="center">
			<td width='50%' class='basic-grey'>
			<h1 >
				拥塞控制算法脚本配置:
				
			</h1>
				<img src="images/yongsai.png" height="55%"  width="100%" alt=" " />
			</td>
			<td align="center">
				<form action="configurationAction" method="post" class="basic-grey">

					<label>
						<span>MesurementName:</span>
						<input type="text" name="MesurementName" value="uia-uib" />
					</label>

					<label>
						<span>SliceName:</span>
						<input type="text" name="SliceName" value="hu_yu"/>
					</label>

					<label>
						<span>Runtime:</span>
						<input type="text" name="Runtime" value="30"/>
					</label>
					<label>
						<span>PortBase:</span>
						<input type="text" name="PortBase" value="12000" />
					</label>

					<label>
						<span>SSHPrivateKey:</span>
						<input type="text" name="SSHPrivateKey" value="~/.ssh/id_rsa" disabled="disabled"/>
					</label>

					<label>
						<span>LocalNodeName:</span>
						<input type="text" name="LocalNodeName" value="julenisse.uia.nornet"/>
					</label>
					<label>
						<span>RemoteNodeName:</span>
						<input type="text" name="RemoteNodeName" value="lungegaardsvannet.uib.nornet"/>
					</label>
					
					<label>
						<span>CMT:</span>
						<div class="checkbox">
							<span>mptcp<input checked="checked" type="checkbox" name="cmt" value="mptcp" />
							</span>
							<span>off <input type="checkbox" name="cmt" value="off" />
							</span>
						</div>
					</label>
					
					<label>
						<span>ipVersion:</span>
						<select name="ipVersion">
							<option value="2">
								IPv6
							</option>
							<option value="1">
								IPv4
							</option>
							<option value="3">
								IPv4 and IPv6
							</option>
						</select>
					</label>
	
					<label>
						<span>PathMgr:</span>
						<div class='checkbox'>
							<span>fullmesh <input type="checkbox" checked="checked" name="PathMgr" value ="fullmesh"/></span>
							<span>binder <input type="checkbox" name="PathMgr" value ="binder"/></span>
							<span>ndiffport <input type="checkbox" name="PathMgr" value ="ndiffports"/></span>
							<span>default <input type="checkbox" name="PathMgr" value ="default"/></span>
						</div>
					</label>

					<label>
						<span>SndBufSize:</span>
						<input type="text" name="SndBufSize" value="16" />
					</label>
					

					<label>
						<span>CC:</span>
						<div class="checkbox">
							<span>cubic<input type="checkbox" checked="checked" name="CC" value="cubic" />
							</span>
							<span>reno<input type="checkbox" name="CC" value="reno" />
							</span>
							<span>dctcp<input type="checkbox" name="CC" value="dctcp" />
							</span>
							<span>bic<input type="checkbox" name="CC" value="bic" />
							</span>
							<span>highspd<input type="checkbox" name="CC"
									value="highspeed" /> </span>
							<span>htcp<input type="checkbox" name="CC" value="htcp" />
							</span>
							<span>hybla<input type="checkbox" name="CC" value="hybla" />
							</span>
							<span>illinois<input type="checkbox" name="CC"
									value="illinois" /> </span>
							<span>lp<input type="checkbox" name="CC" value="lp" /> </span>
							<span>scalable<input type="checkbox" name="CC"
									value="scalable" /> </span>
							<span>vegas<input type="checkbox" name="CC" value="vegas" />
							</span>
							<span>veno<input type="checkbox" name="CC" value="veno" />
							</span>
							<span>westwd<input type="checkbox" name="CC"
									value="westwood" /> </span>
							<span>yeah<input type="checkbox" name="CC" value="yeah" />
							</span>
							<span>balia<input type="checkbox" name="CC" value="balia" />
							</span>
							<span>lia<input type="checkbox" name="CC" value="lia" />
							</span>
							<span>olia<input type="checkbox" name="CC" value="olia" />
							</span>
							<span>wvegas<input type="checkbox" name="CC"
									value="wvegas" /> </span>
						</div>
					</label>
					<div id="div1">
						<input type="submit" name="submit" class="button" value="提交">
					</div>
					<input type="hidden" name="method" value="yongse"/>
				</form>
			</td>
		</tr>
	</table>
</div>