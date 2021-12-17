`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 12/16/2021 11:08:15 AM
// Design Name:
// Module Name: gamma_correction
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module gamma_correction(
    input logic [23:0] din,
    output logic [23:0] dout
  );

  always_comb begin
    case (din[23:16])
      8'd0:
        dout[23:16] = 8'd0;
      8'd1:
        dout[23:16] = 8'd0;
      8'd2:
        dout[23:16] = 8'd0;
      8'd3:
        dout[23:16] = 8'd0;
      8'd4:
        dout[23:16] = 8'd0;
      8'd5:
        dout[23:16] = 8'd0;
      8'd6:
        dout[23:16] = 8'd0;
      8'd7:
        dout[23:16] = 8'd0;
      8'd8:
        dout[23:16] = 8'd1;
      8'd9:
        dout[23:16] = 8'd1;
      8'd10:
        dout[23:16] = 8'd1;
      8'd11:
        dout[23:16] = 8'd1;
      8'd12:
        dout[23:16] = 8'd1;
      8'd13:
        dout[23:16] = 8'd1;
      8'd14:
        dout[23:16] = 8'd1;
      8'd15:
        dout[23:16] = 8'd2;
      8'd16:
        dout[23:16] = 8'd2;
      8'd17:
        dout[23:16] = 8'd2;
      8'd18:
        dout[23:16] = 8'd2;
      8'd19:
        dout[23:16] = 8'd2;
      8'd20:
        dout[23:16] = 8'd3;
      8'd21:
        dout[23:16] = 8'd3;
      8'd22:
        dout[23:16] = 8'd3;
      8'd23:
        dout[23:16] = 8'd3;
      8'd24:
        dout[23:16] = 8'd4;
      8'd25:
        dout[23:16] = 8'd4;
      8'd26:
        dout[23:16] = 8'd4;
      8'd27:
        dout[23:16] = 8'd4;
      8'd28:
        dout[23:16] = 8'd5;
      8'd29:
        dout[23:16] = 8'd5;
      8'd30:
        dout[23:16] = 8'd5;
      8'd31:
        dout[23:16] = 8'd6;
      8'd32:
        dout[23:16] = 8'd6;
      8'd33:
        dout[23:16] = 8'd6;
      8'd34:
        dout[23:16] = 8'd7;
      8'd35:
        dout[23:16] = 8'd7;
      8'd36:
        dout[23:16] = 8'd8;
      8'd37:
        dout[23:16] = 8'd8;
      8'd38:
        dout[23:16] = 8'd8;
      8'd39:
        dout[23:16] = 8'd9;
      8'd40:
        dout[23:16] = 8'd9;
      8'd41:
        dout[23:16] = 8'd10;
      8'd42:
        dout[23:16] = 8'd10;
      8'd43:
        dout[23:16] = 8'd10;
      8'd44:
        dout[23:16] = 8'd11;
      8'd45:
        dout[23:16] = 8'd11;
      8'd46:
        dout[23:16] = 8'd12;
      8'd47:
        dout[23:16] = 8'd12;
      8'd48:
        dout[23:16] = 8'd13;
      8'd49:
        dout[23:16] = 8'd13;
      8'd50:
        dout[23:16] = 8'd14;
      8'd51:
        dout[23:16] = 8'd14;
      8'd52:
        dout[23:16] = 8'd15;
      8'd53:
        dout[23:16] = 8'd15;
      8'd54:
        dout[23:16] = 8'd16;
      8'd55:
        dout[23:16] = 8'd16;
      8'd56:
        dout[23:16] = 8'd17;
      8'd57:
        dout[23:16] = 8'd17;
      8'd58:
        dout[23:16] = 8'd18;
      8'd59:
        dout[23:16] = 8'd18;
      8'd60:
        dout[23:16] = 8'd19;
      8'd61:
        dout[23:16] = 8'd19;
      8'd62:
        dout[23:16] = 8'd20;
      8'd63:
        dout[23:16] = 8'd21;
      8'd64:
        dout[23:16] = 8'd21;
      8'd65:
        dout[23:16] = 8'd22;
      8'd66:
        dout[23:16] = 8'd22;
      8'd67:
        dout[23:16] = 8'd23;
      8'd68:
        dout[23:16] = 8'd24;
      8'd69:
        dout[23:16] = 8'd24;
      8'd70:
        dout[23:16] = 8'd25;
      8'd71:
        dout[23:16] = 8'd26;
      8'd72:
        dout[23:16] = 8'd26;
      8'd73:
        dout[23:16] = 8'd27;
      8'd74:
        dout[23:16] = 8'd28;
      8'd75:
        dout[23:16] = 8'd28;
      8'd76:
        dout[23:16] = 8'd29;
      8'd77:
        dout[23:16] = 8'd30;
      8'd78:
        dout[23:16] = 8'd30;
      8'd79:
        dout[23:16] = 8'd31;
      8'd80:
        dout[23:16] = 8'd32;
      8'd81:
        dout[23:16] = 8'd32;
      8'd82:
        dout[23:16] = 8'd33;
      8'd83:
        dout[23:16] = 8'd34;
      8'd84:
        dout[23:16] = 8'd35;
      8'd85:
        dout[23:16] = 8'd35;
      8'd86:
        dout[23:16] = 8'd36;
      8'd87:
        dout[23:16] = 8'd37;
      8'd88:
        dout[23:16] = 8'd38;
      8'd89:
        dout[23:16] = 8'd38;
      8'd90:
        dout[23:16] = 8'd39;
      8'd91:
        dout[23:16] = 8'd40;
      8'd92:
        dout[23:16] = 8'd41;
      8'd93:
        dout[23:16] = 8'd41;
      8'd94:
        dout[23:16] = 8'd42;
      8'd95:
        dout[23:16] = 8'd43;
      8'd96:
        dout[23:16] = 8'd44;
      8'd97:
        dout[23:16] = 8'd45;
      8'd98:
        dout[23:16] = 8'd46;
      8'd99:
        dout[23:16] = 8'd46;
      8'd100:
        dout[23:16] = 8'd47;
      8'd101:
        dout[23:16] = 8'd48;
      8'd102:
        dout[23:16] = 8'd49;
      8'd103:
        dout[23:16] = 8'd50;
      8'd104:
        dout[23:16] = 8'd51;
      8'd105:
        dout[23:16] = 8'd52;
      8'd106:
        dout[23:16] = 8'd53;
      8'd107:
        dout[23:16] = 8'd53;
      8'd108:
        dout[23:16] = 8'd54;
      8'd109:
        dout[23:16] = 8'd55;
      8'd110:
        dout[23:16] = 8'd56;
      8'd111:
        dout[23:16] = 8'd57;
      8'd112:
        dout[23:16] = 8'd58;
      8'd113:
        dout[23:16] = 8'd59;
      8'd114:
        dout[23:16] = 8'd60;
      8'd115:
        dout[23:16] = 8'd61;
      8'd116:
        dout[23:16] = 8'd62;
      8'd117:
        dout[23:16] = 8'd63;
      8'd118:
        dout[23:16] = 8'd64;
      8'd119:
        dout[23:16] = 8'd65;
      8'd120:
        dout[23:16] = 8'd66;
      8'd121:
        dout[23:16] = 8'd67;
      8'd122:
        dout[23:16] = 8'd68;
      8'd123:
        dout[23:16] = 8'd69;
      8'd124:
        dout[23:16] = 8'd70;
      8'd125:
        dout[23:16] = 8'd71;
      8'd126:
        dout[23:16] = 8'd72;
      8'd127:
        dout[23:16] = 8'd73;
      8'd128:
        dout[23:16] = 8'd74;
      8'd129:
        dout[23:16] = 8'd75;
      8'd130:
        dout[23:16] = 8'd76;
      8'd131:
        dout[23:16] = 8'd77;
      8'd132:
        dout[23:16] = 8'd78;
      8'd133:
        dout[23:16] = 8'd79;
      8'd134:
        dout[23:16] = 8'd80;
      8'd135:
        dout[23:16] = 8'd81;
      8'd136:
        dout[23:16] = 8'd82;
      8'd137:
        dout[23:16] = 8'd83;
      8'd138:
        dout[23:16] = 8'd84;
      8'd139:
        dout[23:16] = 8'd86;
      8'd140:
        dout[23:16] = 8'd87;
      8'd141:
        dout[23:16] = 8'd88;
      8'd142:
        dout[23:16] = 8'd89;
      8'd143:
        dout[23:16] = 8'd90;
      8'd144:
        dout[23:16] = 8'd91;
      8'd145:
        dout[23:16] = 8'd92;
      8'd146:
        dout[23:16] = 8'd93;
      8'd147:
        dout[23:16] = 8'd95;
      8'd148:
        dout[23:16] = 8'd96;
      8'd149:
        dout[23:16] = 8'd97;
      8'd150:
        dout[23:16] = 8'd98;
      8'd151:
        dout[23:16] = 8'd99;
      8'd152:
        dout[23:16] = 8'd100;
      8'd153:
        dout[23:16] = 8'd102;
      8'd154:
        dout[23:16] = 8'd103;
      8'd155:
        dout[23:16] = 8'd104;
      8'd156:
        dout[23:16] = 8'd105;
      8'd157:
        dout[23:16] = 8'd107;
      8'd158:
        dout[23:16] = 8'd108;
      8'd159:
        dout[23:16] = 8'd109;
      8'd160:
        dout[23:16] = 8'd110;
      8'd161:
        dout[23:16] = 8'd111;
      8'd162:
        dout[23:16] = 8'd113;
      8'd163:
        dout[23:16] = 8'd114;
      8'd164:
        dout[23:16] = 8'd115;
      8'd165:
        dout[23:16] = 8'd116;
      8'd166:
        dout[23:16] = 8'd118;
      8'd167:
        dout[23:16] = 8'd119;
      8'd168:
        dout[23:16] = 8'd120;
      8'd169:
        dout[23:16] = 8'd122;
      8'd170:
        dout[23:16] = 8'd123;
      8'd171:
        dout[23:16] = 8'd124;
      8'd172:
        dout[23:16] = 8'd126;
      8'd173:
        dout[23:16] = 8'd127;
      8'd174:
        dout[23:16] = 8'd128;
      8'd175:
        dout[23:16] = 8'd129;
      8'd176:
        dout[23:16] = 8'd131;
      8'd177:
        dout[23:16] = 8'd132;
      8'd178:
        dout[23:16] = 8'd134;
      8'd179:
        dout[23:16] = 8'd135;
      8'd180:
        dout[23:16] = 8'd136;
      8'd181:
        dout[23:16] = 8'd138;
      8'd182:
        dout[23:16] = 8'd139;
      8'd183:
        dout[23:16] = 8'd140;
      8'd184:
        dout[23:16] = 8'd142;
      8'd185:
        dout[23:16] = 8'd143;
      8'd186:
        dout[23:16] = 8'd145;
      8'd187:
        dout[23:16] = 8'd146;
      8'd188:
        dout[23:16] = 8'd147;
      8'd189:
        dout[23:16] = 8'd149;
      8'd190:
        dout[23:16] = 8'd150;
      8'd191:
        dout[23:16] = 8'd152;
      8'd192:
        dout[23:16] = 8'd153;
      8'd193:
        dout[23:16] = 8'd154;
      8'd194:
        dout[23:16] = 8'd156;
      8'd195:
        dout[23:16] = 8'd157;
      8'd196:
        dout[23:16] = 8'd159;
      8'd197:
        dout[23:16] = 8'd160;
      8'd198:
        dout[23:16] = 8'd162;
      8'd199:
        dout[23:16] = 8'd163;
      8'd200:
        dout[23:16] = 8'd165;
      8'd201:
        dout[23:16] = 8'd166;
      8'd202:
        dout[23:16] = 8'd168;
      8'd203:
        dout[23:16] = 8'd169;
      8'd204:
        dout[23:16] = 8'd171;
      8'd205:
        dout[23:16] = 8'd172;
      8'd206:
        dout[23:16] = 8'd174;
      8'd207:
        dout[23:16] = 8'd175;
      8'd208:
        dout[23:16] = 8'd177;
      8'd209:
        dout[23:16] = 8'd178;
      8'd210:
        dout[23:16] = 8'd180;
      8'd211:
        dout[23:16] = 8'd181;
      8'd212:
        dout[23:16] = 8'd183;
      8'd213:
        dout[23:16] = 8'd184;
      8'd214:
        dout[23:16] = 8'd186;
      8'd215:
        dout[23:16] = 8'd188;
      8'd216:
        dout[23:16] = 8'd189;
      8'd217:
        dout[23:16] = 8'd191;
      8'd218:
        dout[23:16] = 8'd192;
      8'd219:
        dout[23:16] = 8'd194;
      8'd220:
        dout[23:16] = 8'd195;
      8'd221:
        dout[23:16] = 8'd197;
      8'd222:
        dout[23:16] = 8'd199;
      8'd223:
        dout[23:16] = 8'd200;
      8'd224:
        dout[23:16] = 8'd202;
      8'd225:
        dout[23:16] = 8'd204;
      8'd226:
        dout[23:16] = 8'd205;
      8'd227:
        dout[23:16] = 8'd207;
      8'd228:
        dout[23:16] = 8'd208;
      8'd229:
        dout[23:16] = 8'd210;
      8'd230:
        dout[23:16] = 8'd212;
      8'd231:
        dout[23:16] = 8'd213;
      8'd232:
        dout[23:16] = 8'd215;
      8'd233:
        dout[23:16] = 8'd217;
      8'd234:
        dout[23:16] = 8'd218;
      8'd235:
        dout[23:16] = 8'd220;
      8'd236:
        dout[23:16] = 8'd222;
      8'd237:
        dout[23:16] = 8'd224;
      8'd238:
        dout[23:16] = 8'd225;
      8'd239:
        dout[23:16] = 8'd227;
      8'd240:
        dout[23:16] = 8'd229;
      8'd241:
        dout[23:16] = 8'd230;
      8'd242:
        dout[23:16] = 8'd232;
      8'd243:
        dout[23:16] = 8'd234;
      8'd244:
        dout[23:16] = 8'd236;
      8'd245:
        dout[23:16] = 8'd237;
      8'd246:
        dout[23:16] = 8'd239;
      8'd247:
        dout[23:16] = 8'd241;
      8'd248:
        dout[23:16] = 8'd243;
      8'd249:
        dout[23:16] = 8'd244;
      8'd250:
        dout[23:16] = 8'd246;
      8'd251:
        dout[23:16] = 8'd248;
      8'd252:
        dout[23:16] = 8'd250;
      8'd253:
        dout[23:16] = 8'd251;
      8'd254:
        dout[23:16] = 8'd253;
      8'd255:
        dout[23:16] = 8'd255;

    endcase

    case (din[15:8])
      8'd0:
        dout[15:8] = 8'd0;
      8'd1:
        dout[15:8] = 8'd0;
      8'd2:
        dout[15:8] = 8'd0;
      8'd3:
        dout[15:8] = 8'd0;
      8'd4:
        dout[15:8] = 8'd0;
      8'd5:
        dout[15:8] = 8'd0;
      8'd6:
        dout[15:8] = 8'd0;
      8'd7:
        dout[15:8] = 8'd0;
      8'd8:
        dout[15:8] = 8'd1;
      8'd9:
        dout[15:8] = 8'd1;
      8'd10:
        dout[15:8] = 8'd1;
      8'd11:
        dout[15:8] = 8'd1;
      8'd12:
        dout[15:8] = 8'd1;
      8'd13:
        dout[15:8] = 8'd1;
      8'd14:
        dout[15:8] = 8'd1;
      8'd15:
        dout[15:8] = 8'd2;
      8'd16:
        dout[15:8] = 8'd2;
      8'd17:
        dout[15:8] = 8'd2;
      8'd18:
        dout[15:8] = 8'd2;
      8'd19:
        dout[15:8] = 8'd2;
      8'd20:
        dout[15:8] = 8'd3;
      8'd21:
        dout[15:8] = 8'd3;
      8'd22:
        dout[15:8] = 8'd3;
      8'd23:
        dout[15:8] = 8'd3;
      8'd24:
        dout[15:8] = 8'd4;
      8'd25:
        dout[15:8] = 8'd4;
      8'd26:
        dout[15:8] = 8'd4;
      8'd27:
        dout[15:8] = 8'd4;
      8'd28:
        dout[15:8] = 8'd5;
      8'd29:
        dout[15:8] = 8'd5;
      8'd30:
        dout[15:8] = 8'd5;
      8'd31:
        dout[15:8] = 8'd6;
      8'd32:
        dout[15:8] = 8'd6;
      8'd33:
        dout[15:8] = 8'd6;
      8'd34:
        dout[15:8] = 8'd7;
      8'd35:
        dout[15:8] = 8'd7;
      8'd36:
        dout[15:8] = 8'd8;
      8'd37:
        dout[15:8] = 8'd8;
      8'd38:
        dout[15:8] = 8'd8;
      8'd39:
        dout[15:8] = 8'd9;
      8'd40:
        dout[15:8] = 8'd9;
      8'd41:
        dout[15:8] = 8'd10;
      8'd42:
        dout[15:8] = 8'd10;
      8'd43:
        dout[15:8] = 8'd10;
      8'd44:
        dout[15:8] = 8'd11;
      8'd45:
        dout[15:8] = 8'd11;
      8'd46:
        dout[15:8] = 8'd12;
      8'd47:
        dout[15:8] = 8'd12;
      8'd48:
        dout[15:8] = 8'd13;
      8'd49:
        dout[15:8] = 8'd13;
      8'd50:
        dout[15:8] = 8'd14;
      8'd51:
        dout[15:8] = 8'd14;
      8'd52:
        dout[15:8] = 8'd15;
      8'd53:
        dout[15:8] = 8'd15;
      8'd54:
        dout[15:8] = 8'd16;
      8'd55:
        dout[15:8] = 8'd16;
      8'd56:
        dout[15:8] = 8'd17;
      8'd57:
        dout[15:8] = 8'd17;
      8'd58:
        dout[15:8] = 8'd18;
      8'd59:
        dout[15:8] = 8'd18;
      8'd60:
        dout[15:8] = 8'd19;
      8'd61:
        dout[15:8] = 8'd19;
      8'd62:
        dout[15:8] = 8'd20;
      8'd63:
        dout[15:8] = 8'd21;
      8'd64:
        dout[15:8] = 8'd21;
      8'd65:
        dout[15:8] = 8'd22;
      8'd66:
        dout[15:8] = 8'd22;
      8'd67:
        dout[15:8] = 8'd23;
      8'd68:
        dout[15:8] = 8'd24;
      8'd69:
        dout[15:8] = 8'd24;
      8'd70:
        dout[15:8] = 8'd25;
      8'd71:
        dout[15:8] = 8'd26;
      8'd72:
        dout[15:8] = 8'd26;
      8'd73:
        dout[15:8] = 8'd27;
      8'd74:
        dout[15:8] = 8'd28;
      8'd75:
        dout[15:8] = 8'd28;
      8'd76:
        dout[15:8] = 8'd29;
      8'd77:
        dout[15:8] = 8'd30;
      8'd78:
        dout[15:8] = 8'd30;
      8'd79:
        dout[15:8] = 8'd31;
      8'd80:
        dout[15:8] = 8'd32;
      8'd81:
        dout[15:8] = 8'd32;
      8'd82:
        dout[15:8] = 8'd33;
      8'd83:
        dout[15:8] = 8'd34;
      8'd84:
        dout[15:8] = 8'd35;
      8'd85:
        dout[15:8] = 8'd35;
      8'd86:
        dout[15:8] = 8'd36;
      8'd87:
        dout[15:8] = 8'd37;
      8'd88:
        dout[15:8] = 8'd38;
      8'd89:
        dout[15:8] = 8'd38;
      8'd90:
        dout[15:8] = 8'd39;
      8'd91:
        dout[15:8] = 8'd40;
      8'd92:
        dout[15:8] = 8'd41;
      8'd93:
        dout[15:8] = 8'd41;
      8'd94:
        dout[15:8] = 8'd42;
      8'd95:
        dout[15:8] = 8'd43;
      8'd96:
        dout[15:8] = 8'd44;
      8'd97:
        dout[15:8] = 8'd45;
      8'd98:
        dout[15:8] = 8'd46;
      8'd99:
        dout[15:8] = 8'd46;
      8'd100:
        dout[15:8] = 8'd47;
      8'd101:
        dout[15:8] = 8'd48;
      8'd102:
        dout[15:8] = 8'd49;
      8'd103:
        dout[15:8] = 8'd50;
      8'd104:
        dout[15:8] = 8'd51;
      8'd105:
        dout[15:8] = 8'd52;
      8'd106:
        dout[15:8] = 8'd53;
      8'd107:
        dout[15:8] = 8'd53;
      8'd108:
        dout[15:8] = 8'd54;
      8'd109:
        dout[15:8] = 8'd55;
      8'd110:
        dout[15:8] = 8'd56;
      8'd111:
        dout[15:8] = 8'd57;
      8'd112:
        dout[15:8] = 8'd58;
      8'd113:
        dout[15:8] = 8'd59;
      8'd114:
        dout[15:8] = 8'd60;
      8'd115:
        dout[15:8] = 8'd61;
      8'd116:
        dout[15:8] = 8'd62;
      8'd117:
        dout[15:8] = 8'd63;
      8'd118:
        dout[15:8] = 8'd64;
      8'd119:
        dout[15:8] = 8'd65;
      8'd120:
        dout[15:8] = 8'd66;
      8'd121:
        dout[15:8] = 8'd67;
      8'd122:
        dout[15:8] = 8'd68;
      8'd123:
        dout[15:8] = 8'd69;
      8'd124:
        dout[15:8] = 8'd70;
      8'd125:
        dout[15:8] = 8'd71;
      8'd126:
        dout[15:8] = 8'd72;
      8'd127:
        dout[15:8] = 8'd73;
      8'd128:
        dout[15:8] = 8'd74;
      8'd129:
        dout[15:8] = 8'd75;
      8'd130:
        dout[15:8] = 8'd76;
      8'd131:
        dout[15:8] = 8'd77;
      8'd132:
        dout[15:8] = 8'd78;
      8'd133:
        dout[15:8] = 8'd79;
      8'd134:
        dout[15:8] = 8'd80;
      8'd135:
        dout[15:8] = 8'd81;
      8'd136:
        dout[15:8] = 8'd82;
      8'd137:
        dout[15:8] = 8'd83;
      8'd138:
        dout[15:8] = 8'd84;
      8'd139:
        dout[15:8] = 8'd86;
      8'd140:
        dout[15:8] = 8'd87;
      8'd141:
        dout[15:8] = 8'd88;
      8'd142:
        dout[15:8] = 8'd89;
      8'd143:
        dout[15:8] = 8'd90;
      8'd144:
        dout[15:8] = 8'd91;
      8'd145:
        dout[15:8] = 8'd92;
      8'd146:
        dout[15:8] = 8'd93;
      8'd147:
        dout[15:8] = 8'd95;
      8'd148:
        dout[15:8] = 8'd96;
      8'd149:
        dout[15:8] = 8'd97;
      8'd150:
        dout[15:8] = 8'd98;
      8'd151:
        dout[15:8] = 8'd99;
      8'd152:
        dout[15:8] = 8'd100;
      8'd153:
        dout[15:8] = 8'd102;
      8'd154:
        dout[15:8] = 8'd103;
      8'd155:
        dout[15:8] = 8'd104;
      8'd156:
        dout[15:8] = 8'd105;
      8'd157:
        dout[15:8] = 8'd107;
      8'd158:
        dout[15:8] = 8'd108;
      8'd159:
        dout[15:8] = 8'd109;
      8'd160:
        dout[15:8] = 8'd110;
      8'd161:
        dout[15:8] = 8'd111;
      8'd162:
        dout[15:8] = 8'd113;
      8'd163:
        dout[15:8] = 8'd114;
      8'd164:
        dout[15:8] = 8'd115;
      8'd165:
        dout[15:8] = 8'd116;
      8'd166:
        dout[15:8] = 8'd118;
      8'd167:
        dout[15:8] = 8'd119;
      8'd168:
        dout[15:8] = 8'd120;
      8'd169:
        dout[15:8] = 8'd122;
      8'd170:
        dout[15:8] = 8'd123;
      8'd171:
        dout[15:8] = 8'd124;
      8'd172:
        dout[15:8] = 8'd126;
      8'd173:
        dout[15:8] = 8'd127;
      8'd174:
        dout[15:8] = 8'd128;
      8'd175:
        dout[15:8] = 8'd129;
      8'd176:
        dout[15:8] = 8'd131;
      8'd177:
        dout[15:8] = 8'd132;
      8'd178:
        dout[15:8] = 8'd134;
      8'd179:
        dout[15:8] = 8'd135;
      8'd180:
        dout[15:8] = 8'd136;
      8'd181:
        dout[15:8] = 8'd138;
      8'd182:
        dout[15:8] = 8'd139;
      8'd183:
        dout[15:8] = 8'd140;
      8'd184:
        dout[15:8] = 8'd142;
      8'd185:
        dout[15:8] = 8'd143;
      8'd186:
        dout[15:8] = 8'd145;
      8'd187:
        dout[15:8] = 8'd146;
      8'd188:
        dout[15:8] = 8'd147;
      8'd189:
        dout[15:8] = 8'd149;
      8'd190:
        dout[15:8] = 8'd150;
      8'd191:
        dout[15:8] = 8'd152;
      8'd192:
        dout[15:8] = 8'd153;
      8'd193:
        dout[15:8] = 8'd154;
      8'd194:
        dout[15:8] = 8'd156;
      8'd195:
        dout[15:8] = 8'd157;
      8'd196:
        dout[15:8] = 8'd159;
      8'd197:
        dout[15:8] = 8'd160;
      8'd198:
        dout[15:8] = 8'd162;
      8'd199:
        dout[15:8] = 8'd163;
      8'd200:
        dout[15:8] = 8'd165;
      8'd201:
        dout[15:8] = 8'd166;
      8'd202:
        dout[15:8] = 8'd168;
      8'd203:
        dout[15:8] = 8'd169;
      8'd204:
        dout[15:8] = 8'd171;
      8'd205:
        dout[15:8] = 8'd172;
      8'd206:
        dout[15:8] = 8'd174;
      8'd207:
        dout[15:8] = 8'd175;
      8'd208:
        dout[15:8] = 8'd177;
      8'd209:
        dout[15:8] = 8'd178;
      8'd210:
        dout[15:8] = 8'd180;
      8'd211:
        dout[15:8] = 8'd181;
      8'd212:
        dout[15:8] = 8'd183;
      8'd213:
        dout[15:8] = 8'd184;
      8'd214:
        dout[15:8] = 8'd186;
      8'd215:
        dout[15:8] = 8'd188;
      8'd216:
        dout[15:8] = 8'd189;
      8'd217:
        dout[15:8] = 8'd191;
      8'd218:
        dout[15:8] = 8'd192;
      8'd219:
        dout[15:8] = 8'd194;
      8'd220:
        dout[15:8] = 8'd195;
      8'd221:
        dout[15:8] = 8'd197;
      8'd222:
        dout[15:8] = 8'd199;
      8'd223:
        dout[15:8] = 8'd200;
      8'd224:
        dout[15:8] = 8'd202;
      8'd225:
        dout[15:8] = 8'd204;
      8'd226:
        dout[15:8] = 8'd205;
      8'd227:
        dout[15:8] = 8'd207;
      8'd228:
        dout[15:8] = 8'd208;
      8'd229:
        dout[15:8] = 8'd210;
      8'd230:
        dout[15:8] = 8'd212;
      8'd231:
        dout[15:8] = 8'd213;
      8'd232:
        dout[15:8] = 8'd215;
      8'd233:
        dout[15:8] = 8'd217;
      8'd234:
        dout[15:8] = 8'd218;
      8'd235:
        dout[15:8] = 8'd220;
      8'd236:
        dout[15:8] = 8'd222;
      8'd237:
        dout[15:8] = 8'd224;
      8'd238:
        dout[15:8] = 8'd225;
      8'd239:
        dout[15:8] = 8'd227;
      8'd240:
        dout[15:8] = 8'd229;
      8'd241:
        dout[15:8] = 8'd230;
      8'd242:
        dout[15:8] = 8'd232;
      8'd243:
        dout[15:8] = 8'd234;
      8'd244:
        dout[15:8] = 8'd236;
      8'd245:
        dout[15:8] = 8'd237;
      8'd246:
        dout[15:8] = 8'd239;
      8'd247:
        dout[15:8] = 8'd241;
      8'd248:
        dout[15:8] = 8'd243;
      8'd249:
        dout[15:8] = 8'd244;
      8'd250:
        dout[15:8] = 8'd246;
      8'd251:
        dout[15:8] = 8'd248;
      8'd252:
        dout[15:8] = 8'd250;
      8'd253:
        dout[15:8] = 8'd251;
      8'd254:
        dout[15:8] = 8'd253;
      8'd255:
        dout[15:8] = 8'd255;

    endcase

    case (din[7:0])
      8'd0:
        dout[7:0] = 8'd0;
      8'd1:
        dout[7:0] = 8'd0;
      8'd2:
        dout[7:0] = 8'd0;
      8'd3:
        dout[7:0] = 8'd0;
      8'd4:
        dout[7:0] = 8'd0;
      8'd5:
        dout[7:0] = 8'd0;
      8'd6:
        dout[7:0] = 8'd0;
      8'd7:
        dout[7:0] = 8'd0;
      8'd8:
        dout[7:0] = 8'd1;
      8'd9:
        dout[7:0] = 8'd1;
      8'd10:
        dout[7:0] = 8'd1;
      8'd11:
        dout[7:0] = 8'd1;
      8'd12:
        dout[7:0] = 8'd1;
      8'd13:
        dout[7:0] = 8'd1;
      8'd14:
        dout[7:0] = 8'd1;
      8'd15:
        dout[7:0] = 8'd2;
      8'd16:
        dout[7:0] = 8'd2;
      8'd17:
        dout[7:0] = 8'd2;
      8'd18:
        dout[7:0] = 8'd2;
      8'd19:
        dout[7:0] = 8'd2;
      8'd20:
        dout[7:0] = 8'd3;
      8'd21:
        dout[7:0] = 8'd3;
      8'd22:
        dout[7:0] = 8'd3;
      8'd23:
        dout[7:0] = 8'd3;
      8'd24:
        dout[7:0] = 8'd4;
      8'd25:
        dout[7:0] = 8'd4;
      8'd26:
        dout[7:0] = 8'd4;
      8'd27:
        dout[7:0] = 8'd4;
      8'd28:
        dout[7:0] = 8'd5;
      8'd29:
        dout[7:0] = 8'd5;
      8'd30:
        dout[7:0] = 8'd5;
      8'd31:
        dout[7:0] = 8'd6;
      8'd32:
        dout[7:0] = 8'd6;
      8'd33:
        dout[7:0] = 8'd6;
      8'd34:
        dout[7:0] = 8'd7;
      8'd35:
        dout[7:0] = 8'd7;
      8'd36:
        dout[7:0] = 8'd8;
      8'd37:
        dout[7:0] = 8'd8;
      8'd38:
        dout[7:0] = 8'd8;
      8'd39:
        dout[7:0] = 8'd9;
      8'd40:
        dout[7:0] = 8'd9;
      8'd41:
        dout[7:0] = 8'd10;
      8'd42:
        dout[7:0] = 8'd10;
      8'd43:
        dout[7:0] = 8'd10;
      8'd44:
        dout[7:0] = 8'd11;
      8'd45:
        dout[7:0] = 8'd11;
      8'd46:
        dout[7:0] = 8'd12;
      8'd47:
        dout[7:0] = 8'd12;
      8'd48:
        dout[7:0] = 8'd13;
      8'd49:
        dout[7:0] = 8'd13;
      8'd50:
        dout[7:0] = 8'd14;
      8'd51:
        dout[7:0] = 8'd14;
      8'd52:
        dout[7:0] = 8'd15;
      8'd53:
        dout[7:0] = 8'd15;
      8'd54:
        dout[7:0] = 8'd16;
      8'd55:
        dout[7:0] = 8'd16;
      8'd56:
        dout[7:0] = 8'd17;
      8'd57:
        dout[7:0] = 8'd17;
      8'd58:
        dout[7:0] = 8'd18;
      8'd59:
        dout[7:0] = 8'd18;
      8'd60:
        dout[7:0] = 8'd19;
      8'd61:
        dout[7:0] = 8'd19;
      8'd62:
        dout[7:0] = 8'd20;
      8'd63:
        dout[7:0] = 8'd21;
      8'd64:
        dout[7:0] = 8'd21;
      8'd65:
        dout[7:0] = 8'd22;
      8'd66:
        dout[7:0] = 8'd22;
      8'd67:
        dout[7:0] = 8'd23;
      8'd68:
        dout[7:0] = 8'd24;
      8'd69:
        dout[7:0] = 8'd24;
      8'd70:
        dout[7:0] = 8'd25;
      8'd71:
        dout[7:0] = 8'd26;
      8'd72:
        dout[7:0] = 8'd26;
      8'd73:
        dout[7:0] = 8'd27;
      8'd74:
        dout[7:0] = 8'd28;
      8'd75:
        dout[7:0] = 8'd28;
      8'd76:
        dout[7:0] = 8'd29;
      8'd77:
        dout[7:0] = 8'd30;
      8'd78:
        dout[7:0] = 8'd30;
      8'd79:
        dout[7:0] = 8'd31;
      8'd80:
        dout[7:0] = 8'd32;
      8'd81:
        dout[7:0] = 8'd32;
      8'd82:
        dout[7:0] = 8'd33;
      8'd83:
        dout[7:0] = 8'd34;
      8'd84:
        dout[7:0] = 8'd35;
      8'd85:
        dout[7:0] = 8'd35;
      8'd86:
        dout[7:0] = 8'd36;
      8'd87:
        dout[7:0] = 8'd37;
      8'd88:
        dout[7:0] = 8'd38;
      8'd89:
        dout[7:0] = 8'd38;
      8'd90:
        dout[7:0] = 8'd39;
      8'd91:
        dout[7:0] = 8'd40;
      8'd92:
        dout[7:0] = 8'd41;
      8'd93:
        dout[7:0] = 8'd41;
      8'd94:
        dout[7:0] = 8'd42;
      8'd95:
        dout[7:0] = 8'd43;
      8'd96:
        dout[7:0] = 8'd44;
      8'd97:
        dout[7:0] = 8'd45;
      8'd98:
        dout[7:0] = 8'd46;
      8'd99:
        dout[7:0] = 8'd46;
      8'd100:
        dout[7:0] = 8'd47;
      8'd101:
        dout[7:0] = 8'd48;
      8'd102:
        dout[7:0] = 8'd49;
      8'd103:
        dout[7:0] = 8'd50;
      8'd104:
        dout[7:0] = 8'd51;
      8'd105:
        dout[7:0] = 8'd52;
      8'd106:
        dout[7:0] = 8'd53;
      8'd107:
        dout[7:0] = 8'd53;
      8'd108:
        dout[7:0] = 8'd54;
      8'd109:
        dout[7:0] = 8'd55;
      8'd110:
        dout[7:0] = 8'd56;
      8'd111:
        dout[7:0] = 8'd57;
      8'd112:
        dout[7:0] = 8'd58;
      8'd113:
        dout[7:0] = 8'd59;
      8'd114:
        dout[7:0] = 8'd60;
      8'd115:
        dout[7:0] = 8'd61;
      8'd116:
        dout[7:0] = 8'd62;
      8'd117:
        dout[7:0] = 8'd63;
      8'd118:
        dout[7:0] = 8'd64;
      8'd119:
        dout[7:0] = 8'd65;
      8'd120:
        dout[7:0] = 8'd66;
      8'd121:
        dout[7:0] = 8'd67;
      8'd122:
        dout[7:0] = 8'd68;
      8'd123:
        dout[7:0] = 8'd69;
      8'd124:
        dout[7:0] = 8'd70;
      8'd125:
        dout[7:0] = 8'd71;
      8'd126:
        dout[7:0] = 8'd72;
      8'd127:
        dout[7:0] = 8'd73;
      8'd128:
        dout[7:0] = 8'd74;
      8'd129:
        dout[7:0] = 8'd75;
      8'd130:
        dout[7:0] = 8'd76;
      8'd131:
        dout[7:0] = 8'd77;
      8'd132:
        dout[7:0] = 8'd78;
      8'd133:
        dout[7:0] = 8'd79;
      8'd134:
        dout[7:0] = 8'd80;
      8'd135:
        dout[7:0] = 8'd81;
      8'd136:
        dout[7:0] = 8'd82;
      8'd137:
        dout[7:0] = 8'd83;
      8'd138:
        dout[7:0] = 8'd84;
      8'd139:
        dout[7:0] = 8'd86;
      8'd140:
        dout[7:0] = 8'd87;
      8'd141:
        dout[7:0] = 8'd88;
      8'd142:
        dout[7:0] = 8'd89;
      8'd143:
        dout[7:0] = 8'd90;
      8'd144:
        dout[7:0] = 8'd91;
      8'd145:
        dout[7:0] = 8'd92;
      8'd146:
        dout[7:0] = 8'd93;
      8'd147:
        dout[7:0] = 8'd95;
      8'd148:
        dout[7:0] = 8'd96;
      8'd149:
        dout[7:0] = 8'd97;
      8'd150:
        dout[7:0] = 8'd98;
      8'd151:
        dout[7:0] = 8'd99;
      8'd152:
        dout[7:0] = 8'd100;
      8'd153:
        dout[7:0] = 8'd102;
      8'd154:
        dout[7:0] = 8'd103;
      8'd155:
        dout[7:0] = 8'd104;
      8'd156:
        dout[7:0] = 8'd105;
      8'd157:
        dout[7:0] = 8'd107;
      8'd158:
        dout[7:0] = 8'd108;
      8'd159:
        dout[7:0] = 8'd109;
      8'd160:
        dout[7:0] = 8'd110;
      8'd161:
        dout[7:0] = 8'd111;
      8'd162:
        dout[7:0] = 8'd113;
      8'd163:
        dout[7:0] = 8'd114;
      8'd164:
        dout[7:0] = 8'd115;
      8'd165:
        dout[7:0] = 8'd116;
      8'd166:
        dout[7:0] = 8'd118;
      8'd167:
        dout[7:0] = 8'd119;
      8'd168:
        dout[7:0] = 8'd120;
      8'd169:
        dout[7:0] = 8'd122;
      8'd170:
        dout[7:0] = 8'd123;
      8'd171:
        dout[7:0] = 8'd124;
      8'd172:
        dout[7:0] = 8'd126;
      8'd173:
        dout[7:0] = 8'd127;
      8'd174:
        dout[7:0] = 8'd128;
      8'd175:
        dout[7:0] = 8'd129;
      8'd176:
        dout[7:0] = 8'd131;
      8'd177:
        dout[7:0] = 8'd132;
      8'd178:
        dout[7:0] = 8'd134;
      8'd179:
        dout[7:0] = 8'd135;
      8'd180:
        dout[7:0] = 8'd136;
      8'd181:
        dout[7:0] = 8'd138;
      8'd182:
        dout[7:0] = 8'd139;
      8'd183:
        dout[7:0] = 8'd140;
      8'd184:
        dout[7:0] = 8'd142;
      8'd185:
        dout[7:0] = 8'd143;
      8'd186:
        dout[7:0] = 8'd145;
      8'd187:
        dout[7:0] = 8'd146;
      8'd188:
        dout[7:0] = 8'd147;
      8'd189:
        dout[7:0] = 8'd149;
      8'd190:
        dout[7:0] = 8'd150;
      8'd191:
        dout[7:0] = 8'd152;
      8'd192:
        dout[7:0] = 8'd153;
      8'd193:
        dout[7:0] = 8'd154;
      8'd194:
        dout[7:0] = 8'd156;
      8'd195:
        dout[7:0] = 8'd157;
      8'd196:
        dout[7:0] = 8'd159;
      8'd197:
        dout[7:0] = 8'd160;
      8'd198:
        dout[7:0] = 8'd162;
      8'd199:
        dout[7:0] = 8'd163;
      8'd200:
        dout[7:0] = 8'd165;
      8'd201:
        dout[7:0] = 8'd166;
      8'd202:
        dout[7:0] = 8'd168;
      8'd203:
        dout[7:0] = 8'd169;
      8'd204:
        dout[7:0] = 8'd171;
      8'd205:
        dout[7:0] = 8'd172;
      8'd206:
        dout[7:0] = 8'd174;
      8'd207:
        dout[7:0] = 8'd175;
      8'd208:
        dout[7:0] = 8'd177;
      8'd209:
        dout[7:0] = 8'd178;
      8'd210:
        dout[7:0] = 8'd180;
      8'd211:
        dout[7:0] = 8'd181;
      8'd212:
        dout[7:0] = 8'd183;
      8'd213:
        dout[7:0] = 8'd184;
      8'd214:
        dout[7:0] = 8'd186;
      8'd215:
        dout[7:0] = 8'd188;
      8'd216:
        dout[7:0] = 8'd189;
      8'd217:
        dout[7:0] = 8'd191;
      8'd218:
        dout[7:0] = 8'd192;
      8'd219:
        dout[7:0] = 8'd194;
      8'd220:
        dout[7:0] = 8'd195;
      8'd221:
        dout[7:0] = 8'd197;
      8'd222:
        dout[7:0] = 8'd199;
      8'd223:
        dout[7:0] = 8'd200;
      8'd224:
        dout[7:0] = 8'd202;
      8'd225:
        dout[7:0] = 8'd204;
      8'd226:
        dout[7:0] = 8'd205;
      8'd227:
        dout[7:0] = 8'd207;
      8'd228:
        dout[7:0] = 8'd208;
      8'd229:
        dout[7:0] = 8'd210;
      8'd230:
        dout[7:0] = 8'd212;
      8'd231:
        dout[7:0] = 8'd213;
      8'd232:
        dout[7:0] = 8'd215;
      8'd233:
        dout[7:0] = 8'd217;
      8'd234:
        dout[7:0] = 8'd218;
      8'd235:
        dout[7:0] = 8'd220;
      8'd236:
        dout[7:0] = 8'd222;
      8'd237:
        dout[7:0] = 8'd224;
      8'd238:
        dout[7:0] = 8'd225;
      8'd239:
        dout[7:0] = 8'd227;
      8'd240:
        dout[7:0] = 8'd229;
      8'd241:
        dout[7:0] = 8'd230;
      8'd242:
        dout[7:0] = 8'd232;
      8'd243:
        dout[7:0] = 8'd234;
      8'd244:
        dout[7:0] = 8'd236;
      8'd245:
        dout[7:0] = 8'd237;
      8'd246:
        dout[7:0] = 8'd239;
      8'd247:
        dout[7:0] = 8'd241;
      8'd248:
        dout[7:0] = 8'd243;
      8'd249:
        dout[7:0] = 8'd244;
      8'd250:
        dout[7:0] = 8'd246;
      8'd251:
        dout[7:0] = 8'd248;
      8'd252:
        dout[7:0] = 8'd250;
      8'd253:
        dout[7:0] = 8'd251;
      8'd254:
        dout[7:0] = 8'd253;
      8'd255:
        dout[7:0] = 8'd255;
    endcase
  end
endmodule
