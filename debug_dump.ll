; ModuleID = 'src/main.npk'
source_filename = "src/main.npk"

%struct.NpkString = type { ptr, i64 }
%Numeric_vtable_t = type {}
%Display_vtable_t = type {}
%struct.NIL = type {}
%ArgParser = type { ptr, ptr, ptr }
%Request = type { ptr, ptr, ptr, ptr, i32, i32 }
%Response = type { i32, ptr, ptr, ptr }

@.str.data = private constant [1 x i8] zeroinitializer
@.str = private constant %struct.NpkString { ptr @.str.data, i64 0 }
@.str.data.1 = private constant [1 x i8] zeroinitializer
@.str.2 = private constant %struct.NpkString { ptr @.str.data.1, i64 0 }
@.str.data.3 = private constant [2 x i8] c"|\00"
@.str.4 = private constant %struct.NpkString { ptr @.str.data.3, i64 1 }
@.str.data.5 = private constant [1 x i8] zeroinitializer
@.str.6 = private constant %struct.NpkString { ptr @.str.data.5, i64 0 }
@.str.data.7 = private constant [1 x i8] zeroinitializer
@.str.8 = private constant %struct.NpkString { ptr @.str.data.7, i64 0 }
@.str.data.9 = private constant [2 x i8] c"|\00"
@.str.10 = private constant %struct.NpkString { ptr @.str.data.9, i64 1 }
@.str.11 = private constant %struct.NpkString { ptr @.str.data.9, i64 1 }
@.str.data.12 = private constant [2 x i8] c"|\00"
@.str.13 = private constant %struct.NpkString { ptr @.str.data.12, i64 1 }
@.str.14 = private constant %struct.NpkString { ptr @.str.data.12, i64 1 }
@.str.data.15 = private constant [1 x i8] zeroinitializer
@.str.16 = private constant %struct.NpkString { ptr @.str.data.15, i64 0 }
@.str.data.17 = private constant [1 x i8] zeroinitializer
@.str.18 = private constant %struct.NpkString { ptr @.str.data.17, i64 0 }
@.str.data.19 = private constant [1 x i8] zeroinitializer
@.str.20 = private constant %struct.NpkString { ptr @.str.data.19, i64 0 }
@.str.data.21 = private constant [2 x i8] c"|\00"
@.str.22 = private constant %struct.NpkString { ptr @.str.data.21, i64 1 }
@.str.data.23 = private constant [1 x i8] zeroinitializer
@.str.24 = private constant %struct.NpkString { ptr @.str.data.23, i64 0 }
@.str.data.25 = private constant [1 x i8] zeroinitializer
@.str.26 = private constant %struct.NpkString { ptr @.str.data.25, i64 0 }
@.str.data.27 = private constant [1 x i8] zeroinitializer
@.str.28 = private constant %struct.NpkString { ptr @.str.data.27, i64 0 }
@.str.data.29 = private constant [1 x i8] zeroinitializer
@.str.30 = private constant %struct.NpkString { ptr @.str.data.29, i64 0 }
@.str.data.31 = private constant [2 x i8] c"-\00"
@.str.32 = private constant %struct.NpkString { ptr @.str.data.31, i64 1 }
@.str.data.33 = private constant [2 x i8] c"1\00"
@.str.34 = private constant %struct.NpkString { ptr @.str.data.33, i64 1 }
@.str.data.35 = private constant [2 x i8] c"2\00"
@.str.36 = private constant %struct.NpkString { ptr @.str.data.35, i64 1 }
@.str.data.37 = private constant [2 x i8] c"3\00"
@.str.38 = private constant %struct.NpkString { ptr @.str.data.37, i64 1 }
@.str.data.39 = private constant [2 x i8] c"4\00"
@.str.40 = private constant %struct.NpkString { ptr @.str.data.39, i64 1 }
@.str.data.41 = private constant [2 x i8] c"5\00"
@.str.42 = private constant %struct.NpkString { ptr @.str.data.41, i64 1 }
@.str.data.43 = private constant [2 x i8] c"6\00"
@.str.44 = private constant %struct.NpkString { ptr @.str.data.43, i64 1 }
@.str.data.45 = private constant [2 x i8] c"7\00"
@.str.46 = private constant %struct.NpkString { ptr @.str.data.45, i64 1 }
@.str.data.47 = private constant [2 x i8] c"8\00"
@.str.48 = private constant %struct.NpkString { ptr @.str.data.47, i64 1 }
@.str.data.49 = private constant [2 x i8] c"9\00"
@.str.50 = private constant %struct.NpkString { ptr @.str.data.49, i64 1 }
@.str.data.51 = private constant [1 x i8] zeroinitializer
@.str.52 = private constant %struct.NpkString { ptr @.str.data.51, i64 0 }
@.str.data.53 = private constant [2 x i8] c"|\00"
@.str.54 = private constant %struct.NpkString { ptr @.str.data.53, i64 1 }
@.str.data.55 = private constant [2 x i8] c"|\00"
@.str.56 = private constant %struct.NpkString { ptr @.str.data.55, i64 1 }
@.str.data.57 = private constant [2 x i8] c"|\00"
@.str.58 = private constant %struct.NpkString { ptr @.str.data.57, i64 1 }
@.str.data.59 = private constant [2 x i8] c"|\00"
@.str.60 = private constant %struct.NpkString { ptr @.str.data.59, i64 1 }
@.str.data.61 = private constant [2 x i8] c"|\00"
@.str.62 = private constant %struct.NpkString { ptr @.str.data.61, i64 1 }
@.str.data.63 = private constant [2 x i8] c"|\00"
@.str.64 = private constant %struct.NpkString { ptr @.str.data.63, i64 1 }
@.str.data.65 = private constant [6 x i8] c"flag|\00"
@.str.66 = private constant %struct.NpkString { ptr @.str.data.65, i64 5 }
@.str.data.67 = private constant [2 x i8] c"|\00"
@.str.68 = private constant %struct.NpkString { ptr @.str.data.67, i64 1 }
@.str.data.69 = private constant [2 x i8] c"|\00"
@.str.70 = private constant %struct.NpkString { ptr @.str.data.69, i64 1 }
@.str.data.71 = private constant [5 x i8] c"opt|\00"
@.str.72 = private constant %struct.NpkString { ptr @.str.data.71, i64 4 }
@.str.data.73 = private constant [1 x i8] zeroinitializer
@.str.74 = private constant %struct.NpkString { ptr @.str.data.73, i64 0 }
@.str.data.75 = private constant [1 x i8] zeroinitializer
@.str.76 = private constant %struct.NpkString { ptr @.str.data.75, i64 0 }
@.str.data.77 = private constant [1 x i8] zeroinitializer
@.str.78 = private constant %struct.NpkString { ptr @.str.data.77, i64 0 }
@.str.data.79 = private constant [10 x i8] c"USAGE:\0A  \00"
@.str.80 = private constant %struct.NpkString { ptr @.str.data.79, i64 9 }
@.str.data.81 = private constant [16 x i8] c"app [OPTIONS]\0A\0A\00"
@.str.82 = private constant %struct.NpkString { ptr @.str.data.81, i64 15 }
@.str.data.83 = private constant [10 x i8] c"OPTIONS:\0A\00"
@.str.84 = private constant %struct.NpkString { ptr @.str.data.83, i64 9 }
@.str.data.85 = private constant [3 x i8] c"  \00"
@.str.86 = private constant %struct.NpkString { ptr @.str.data.85, i64 2 }
@.str.data.87 = private constant [4 x i8] c"opt\00"
@.str.88 = private constant %struct.NpkString { ptr @.str.data.87, i64 3 }
@.str.data.89 = private constant [9 x i8] c" <value>\00"
@.str.90 = private constant %struct.NpkString { ptr @.str.data.89, i64 8 }
@.str.data.91 = private constant [3 x i8] c"\09\09\00"
@.str.92 = private constant %struct.NpkString { ptr @.str.data.91, i64 2 }
@.str.data.93 = private constant [2 x i8] c"\09\00"
@.str.94 = private constant %struct.NpkString { ptr @.str.data.93, i64 1 }
@.str.data.95 = private constant [3 x i8] c"\09\09\00"
@.str.96 = private constant %struct.NpkString { ptr @.str.data.95, i64 2 }
@.str.data.97 = private constant [2 x i8] c"\09\00"
@.str.98 = private constant %struct.NpkString { ptr @.str.data.97, i64 1 }
@.str.data.99 = private constant [2 x i8] c"\0A\00"
@.str.100 = private constant %struct.NpkString { ptr @.str.data.99, i64 1 }
@.str.data.101 = private constant [2 x i8] c"\0A\00"
@.str.102 = private constant %struct.NpkString { ptr @.str.data.101, i64 1 }
@.str.data.103 = private constant [2 x i8] c"|\00"
@.str.104 = private constant %struct.NpkString { ptr @.str.data.103, i64 1 }
@.str.105 = private constant %struct.NpkString { ptr @.str.data.103, i64 1 }
@.str.data.106 = private constant [2 x i8] c"|\00"
@.str.107 = private constant %struct.NpkString { ptr @.str.data.106, i64 1 }
@.str.data.108 = private constant [2 x i8] c"|\00"
@.str.109 = private constant %struct.NpkString { ptr @.str.data.108, i64 1 }
@.str.data.110 = private constant [2 x i8] c"|\00"
@.str.111 = private constant %struct.NpkString { ptr @.str.data.110, i64 1 }
@.str.data.112 = private constant [2 x i8] c"|\00"
@.str.113 = private constant %struct.NpkString { ptr @.str.data.112, i64 1 }
@.str.data.114 = private constant [2 x i8] c"|\00"
@.str.115 = private constant %struct.NpkString { ptr @.str.data.114, i64 1 }
@.str.data.116 = private constant [1 x i8] zeroinitializer
@.str.117 = private constant %struct.NpkString { ptr @.str.data.116, i64 0 }
@.str.data.118 = private constant [1 x i8] zeroinitializer
@.str.119 = private constant %struct.NpkString { ptr @.str.data.118, i64 0 }
@.str.data.120 = private constant [2 x i8] c"|\00"
@.str.121 = private constant %struct.NpkString { ptr @.str.data.120, i64 1 }
@.str.data.122 = private constant [1 x i8] zeroinitializer
@.str.123 = private constant %struct.NpkString { ptr @.str.data.122, i64 0 }
@.str.data.124 = private constant [1 x i8] zeroinitializer
@.str.125 = private constant %struct.NpkString { ptr @.str.data.124, i64 0 }
@.str.data.126 = private constant [1 x i8] zeroinitializer
@.str.127 = private constant %struct.NpkString { ptr @.str.data.126, i64 0 }
@.str.data.128 = private constant [1 x i8] zeroinitializer
@.str.129 = private constant %struct.NpkString { ptr @.str.data.128, i64 0 }
@.str.data.130 = private constant [1 x i8] zeroinitializer
@.str.131 = private constant %struct.NpkString { ptr @.str.data.130, i64 0 }
@.str.data.132 = private constant [1 x i8] zeroinitializer
@.str.133 = private constant %struct.NpkString { ptr @.str.data.132, i64 0 }
@.str.data.134 = private constant [1 x i8] zeroinitializer
@.str.135 = private constant %struct.NpkString { ptr @.str.data.134, i64 0 }
@.str.data.136 = private constant [2 x i8] c"\0A\00"
@.str.137 = private constant %struct.NpkString { ptr @.str.data.136, i64 1 }
@.str.data.138 = private constant [1 x i8] zeroinitializer
@.str.139 = private constant %struct.NpkString { ptr @.str.data.138, i64 0 }
@.str.data.140 = private constant [1 x i8] zeroinitializer
@.str.141 = private constant %struct.NpkString { ptr @.str.data.140, i64 0 }
@.str.data.142 = private constant [2 x i8] c"\0A\00"
@.str.143 = private constant %struct.NpkString { ptr @.str.data.142, i64 1 }
@.str.data.144 = private constant [2 x i8] c".\00"
@.str.145 = private constant %struct.NpkString { ptr @.str.data.144, i64 1 }
@.str.data.146 = private constant [3 x i8] c"..\00"
@.str.147 = private constant %struct.NpkString { ptr @.str.data.146, i64 2 }
@.str.data.148 = private constant [2 x i8] c"/\00"
@.str.149 = private constant %struct.NpkString { ptr @.str.data.148, i64 1 }
@.str.data.150 = private constant [2 x i8] c"r\00"
@.str.151 = private constant %struct.NpkString { ptr @.str.data.150, i64 1 }
@.str.data.152 = private constant [1 x i8] zeroinitializer
@.str.153 = private constant %struct.NpkString { ptr @.str.data.152, i64 0 }
@.str.data.154 = private constant [1 x i8] zeroinitializer
@.str.155 = private constant %struct.NpkString { ptr @.str.data.154, i64 0 }
@.str.data.156 = private constant [1 x i8] zeroinitializer
@.str.157 = private constant %struct.NpkString { ptr @.str.data.156, i64 0 }
@.str.data.158 = private constant [2 x i8] c"r\00"
@.str.159 = private constant %struct.NpkString { ptr @.str.data.158, i64 1 }
@.str.data.160 = private constant [1 x i8] zeroinitializer
@.str.161 = private constant %struct.NpkString { ptr @.str.data.160, i64 0 }
@.str.data.162 = private constant [1 x i8] zeroinitializer
@.str.163 = private constant %struct.NpkString { ptr @.str.data.162, i64 0 }
@.str.data.164 = private constant [1 x i8] zeroinitializer
@.str.165 = private constant %struct.NpkString { ptr @.str.data.164, i64 0 }
@.str.data.166 = private constant [2 x i8] c"=\00"
@.str.167 = private constant %struct.NpkString { ptr @.str.data.166, i64 1 }
@.str.data.168 = private constant [1 x i8] zeroinitializer
@.str.169 = private constant %struct.NpkString { ptr @.str.data.168, i64 0 }
@.str.data.170 = private constant [2 x i8] c"=\00"
@.str.171 = private constant %struct.NpkString { ptr @.str.data.170, i64 1 }
@.str.data.172 = private constant [19 x i8] c"/proc/self/environ\00"
@.str.173 = private constant %struct.NpkString { ptr @.str.data.172, i64 18 }
@.str.data.174 = private constant [2 x i8] c"r\00"
@.str.175 = private constant %struct.NpkString { ptr @.str.data.174, i64 1 }
@.str.data.176 = private constant [1 x i8] zeroinitializer
@.str.177 = private constant %struct.NpkString { ptr @.str.data.176, i64 0 }
@.str.data.178 = private constant [1 x i8] zeroinitializer
@.str.179 = private constant %struct.NpkString { ptr @.str.data.178, i64 0 }
@.str.data.180 = private constant [1 x i8] zeroinitializer
@.str.181 = private constant %struct.NpkString { ptr @.str.data.180, i64 0 }
@.str.data.182 = private constant [2 x i8] c"=\00"
@.str.183 = private constant %struct.NpkString { ptr @.str.data.182, i64 1 }
@.str.data.184 = private constant [1 x i8] zeroinitializer
@.str.185 = private constant %struct.NpkString { ptr @.str.data.184, i64 0 }
@.str.data.186 = private constant [3 x i8] c"{{\00"
@.str.187 = private constant %struct.NpkString { ptr @.str.data.186, i64 2 }
@.str.data.188 = private constant [3 x i8] c"}}\00"
@.str.189 = private constant %struct.NpkString { ptr @.str.data.188, i64 2 }
@.str.data.190 = private constant [4 x i8] c"GET\00"
@.str.191 = private constant %struct.NpkString { ptr @.str.data.190, i64 3 }
@.str.data.192 = private constant [1 x i8] zeroinitializer
@.str.193 = private constant %struct.NpkString { ptr @.str.data.192, i64 0 }
@.str.data.194 = private constant [3 x i8] c"\0D\0A\00"
@.str.195 = private constant %struct.NpkString { ptr @.str.data.194, i64 2 }
@.str.data.196 = private constant [2 x i8] c"\0A\00"
@.str.197 = private constant %struct.NpkString { ptr @.str.data.196, i64 1 }
@.str.data.198 = private constant [2 x i8] c"\0A\00"
@.str.199 = private constant %struct.NpkString { ptr @.str.data.198, i64 1 }
@.str.data.200 = private constant [2 x i8] c" \00"
@.str.201 = private constant %struct.NpkString { ptr @.str.data.200, i64 1 }
@.str.data.202 = private constant [2 x i8] c" \00"
@.str.203 = private constant %struct.NpkString { ptr @.str.data.202, i64 1 }
@.str.data.204 = private constant [2 x i8] c" \00"
@.str.205 = private constant %struct.NpkString { ptr @.str.data.204, i64 1 }
@.str.data.206 = private constant [1 x i8] zeroinitializer
@.str.207 = private constant %struct.NpkString { ptr @.str.data.206, i64 0 }
@.str.data.208 = private constant [2 x i8] c"\0A\00"
@.str.209 = private constant %struct.NpkString { ptr @.str.data.208, i64 1 }
@.str.data.210 = private constant [2 x i8] c":\00"
@.str.211 = private constant %struct.NpkString { ptr @.str.data.210, i64 1 }
@.str.data.212 = private constant [2 x i8] c":\00"
@.str.213 = private constant %struct.NpkString { ptr @.str.data.212, i64 1 }
@.str.data.214 = private constant [2 x i8] c":\00"
@.str.215 = private constant %struct.NpkString { ptr @.str.data.214, i64 1 }
@.str.data.216 = private constant [3 x i8] c": \00"
@.str.217 = private constant %struct.NpkString { ptr @.str.data.216, i64 2 }
@.str.data.218 = private constant [2 x i8] c"\0A\00"
@.str.219 = private constant %struct.NpkString { ptr @.str.data.218, i64 1 }
@.str.data.220 = private constant [1 x i8] zeroinitializer
@.str.221 = private constant %struct.NpkString { ptr @.str.data.220, i64 0 }
@.str.data.222 = private constant [1 x i8] zeroinitializer
@.str.223 = private constant %struct.NpkString { ptr @.str.data.222, i64 0 }
@.str.data.224 = private constant [2 x i8] c"|\00"
@.str.225 = private constant %struct.NpkString { ptr @.str.data.224, i64 1 }
@.str.data.226 = private constant [4 x i8] c"GET\00"
@.str.227 = private constant %struct.NpkString { ptr @.str.data.226, i64 3 }
@.str.data.228 = private constant [5 x i8] c"POST\00"
@.str.229 = private constant %struct.NpkString { ptr @.str.data.228, i64 4 }
@.str.data.230 = private constant [4 x i8] c"PUT\00"
@.str.231 = private constant %struct.NpkString { ptr @.str.data.230, i64 3 }
@.str.data.232 = private constant [7 x i8] c"DELETE\00"
@.str.233 = private constant %struct.NpkString { ptr @.str.data.232, i64 6 }
@.str.data.234 = private constant [6 x i8] c"PATCH\00"
@.str.235 = private constant %struct.NpkString { ptr @.str.data.234, i64 5 }
@.str.data.236 = private constant [5 x i8] c"HEAD\00"
@.str.237 = private constant %struct.NpkString { ptr @.str.data.236, i64 4 }
@.str.data.238 = private constant [4 x i8] c"GET\00"
@.str.239 = private constant %struct.NpkString { ptr @.str.data.238, i64 3 }
@.str.data.240 = private constant [5 x i8] c"POST\00"
@.str.241 = private constant %struct.NpkString { ptr @.str.data.240, i64 4 }
@.str.data.242 = private constant [2 x i8] c"[\00"
@.str.243 = private constant %struct.NpkString { ptr @.str.data.242, i64 1 }
@.str.data.244 = private constant [2 x i8] c"m\00"
@.str.245 = private constant %struct.NpkString { ptr @.str.data.244, i64 1 }
@.str.data.246 = private constant [4 x i8] c"[0m\00"
@.str.247 = private constant %struct.NpkString { ptr @.str.data.246, i64 3 }
@.str.data.248 = private constant [1 x i8] zeroinitializer
@.str.249 = private constant %struct.NpkString { ptr @.str.data.248, i64 0 }
@.str.data.250 = private constant [3 x i8] c"92\00"
@.str.251 = private constant %struct.NpkString { ptr @.str.data.250, i64 2 }
@.str.data.252 = private constant [3 x i8] c"91\00"
@.str.253 = private constant %struct.NpkString { ptr @.str.data.252, i64 2 }
@.str.data.254 = private constant [3 x i8] c"36\00"
@.str.255 = private constant %struct.NpkString { ptr @.str.data.254, i64 2 }
@.str.data.256 = private constant [3 x i8] c"33\00"
@.str.257 = private constant %struct.NpkString { ptr @.str.data.256, i64 2 }
@.str.data.258 = private constant [3 x i8] c"90\00"
@.str.259 = private constant %struct.NpkString { ptr @.str.data.258, i64 2 }
@.str.data.260 = private constant [2 x i8] c"1\00"
@.str.261 = private constant %struct.NpkString { ptr @.str.data.260, i64 1 }
@.str.data.262 = private constant [2 x i8] c"2\00"
@.str.263 = private constant %struct.NpkString { ptr @.str.data.262, i64 1 }
@.str.data.264 = private constant [3 x i8] c"34\00"
@.str.265 = private constant %struct.NpkString { ptr @.str.data.264, i64 2 }
@.str.data.266 = private constant [3 x i8] c"35\00"
@.str.267 = private constant %struct.NpkString { ptr @.str.data.266, i64 2 }
@.str.data.268 = private constant [3 x i8] c"31\00"
@.str.269 = private constant %struct.NpkString { ptr @.str.data.268, i64 2 }
@.str.data.270 = private constant [2 x i8] c"\0A\00"
@.str.271 = private constant %struct.NpkString { ptr @.str.data.270, i64 1 }
@.str.data.272 = private constant [2 x i8] c"-\00"
@.str.273 = private constant %struct.NpkString { ptr @.str.data.272, i64 1 }
@.str.data.274 = private constant [2 x i8] c"\0A\00"
@.str.275 = private constant %struct.NpkString { ptr @.str.data.274, i64 1 }
@.str.data.276 = private constant [1 x i8] zeroinitializer
@.str.277 = private constant %struct.NpkString { ptr @.str.data.276, i64 0 }
@.str.data.278 = private constant [9 x i8] c"Status: \00"
@.str.279 = private constant %struct.NpkString { ptr @.str.data.278, i64 8 }
@.str.data.280 = private constant [3 x i8] c"\0A\0A\00"
@.str.281 = private constant %struct.NpkString { ptr @.str.data.280, i64 2 }
@.str.data.282 = private constant [8 x i8] c"Error: \00"
@.str.283 = private constant %struct.NpkString { ptr @.str.data.282, i64 7 }
@.str.data.284 = private constant [3 x i8] c"\0A\0A\00"
@.str.285 = private constant %struct.NpkString { ptr @.str.data.284, i64 2 }
@.str.data.286 = private constant [10 x i8] c"Headers:\0A\00"
@.str.287 = private constant %struct.NpkString { ptr @.str.data.286, i64 9 }
@.str.data.288 = private constant [2 x i8] c"\0A\00"
@.str.289 = private constant %struct.NpkString { ptr @.str.data.288, i64 1 }
@.str.data.290 = private constant [2 x i8] c":\00"
@.str.291 = private constant %struct.NpkString { ptr @.str.data.290, i64 1 }
@.str.data.292 = private constant [2 x i8] c":\00"
@.str.293 = private constant %struct.NpkString { ptr @.str.data.292, i64 1 }
@.str.data.294 = private constant [2 x i8] c":\00"
@.str.295 = private constant %struct.NpkString { ptr @.str.data.294, i64 1 }
@.str.data.296 = private constant [3 x i8] c"  \00"
@.str.297 = private constant %struct.NpkString { ptr @.str.data.296, i64 2 }
@.str.data.298 = private constant [3 x i8] c": \00"
@.str.299 = private constant %struct.NpkString { ptr @.str.data.298, i64 2 }
@.str.data.300 = private constant [2 x i8] c"\0A\00"
@.str.301 = private constant %struct.NpkString { ptr @.str.data.300, i64 1 }
@.str.data.302 = private constant [3 x i8] c"  \00"
@.str.303 = private constant %struct.NpkString { ptr @.str.data.302, i64 2 }
@.str.data.304 = private constant [2 x i8] c"\0A\00"
@.str.305 = private constant %struct.NpkString { ptr @.str.data.304, i64 1 }
@.str.data.306 = private constant [2 x i8] c"\0A\00"
@.str.307 = private constant %struct.NpkString { ptr @.str.data.306, i64 1 }
@.str.data.308 = private constant [7 x i8] c"Body:\0A\00"
@.str.309 = private constant %struct.NpkString { ptr @.str.data.308, i64 6 }
@.str.data.310 = private constant [2 x i8] c"{\00"
@.str.311 = private constant %struct.NpkString { ptr @.str.data.310, i64 1 }
@.str.data.312 = private constant [2 x i8] c"[\00"
@.str.313 = private constant %struct.NpkString { ptr @.str.data.312, i64 1 }
@.str.data.314 = private constant [2 x i8] c"\0A\00"
@.str.315 = private constant %struct.NpkString { ptr @.str.data.314, i64 1 }
@Numeric_vtable_int8 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_int16 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_int32 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_int64 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_uint8 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_uint16 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_uint32 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_uint64 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_tbb8 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_tbb16 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_tbb32 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_tbb64 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_frac8 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_frac16 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_frac32 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_frac64 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_tfp32 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_tfp64 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_fix256 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_flt32 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_flt64 = internal constant %Numeric_vtable_t zeroinitializer
@Display_vtable_int8 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int16 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int32 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int64 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int128 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int256 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int512 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int1024 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int2048 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int4096 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint8 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint16 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint32 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint64 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint128 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint256 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint512 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint1024 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint2048 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint4096 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tbb8 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tbb16 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tbb32 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tbb64 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_frac8 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_frac16 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_frac32 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_frac64 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tfp32 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tfp64 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_fix256 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_flt32 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_flt64 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_trit = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tryte = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_nit = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_nyte = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_bool = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_string = internal constant %Display_vtable_t zeroinitializer
@.str.data.316 = private constant [19 x i8] c"/proc/self/cmdline\00"
@.str.317 = private constant %struct.NpkString { ptr @.str.data.316, i64 18 }
@.str.data.318 = private constant [2 x i8] c"r\00"
@.str.319 = private constant %struct.NpkString { ptr @.str.data.318, i64 1 }
@.str.data.320 = private constant [2 x i8] c"|\00"
@.str.321 = private constant %struct.NpkString { ptr @.str.data.320, i64 1 }
@.str.data.322 = private constant [2 x i8] c"|\00"
@.str.323 = private constant %struct.NpkString { ptr @.str.data.322, i64 1 }
@.str.data.324 = private constant [1 x i8] zeroinitializer
@.str.325 = private constant %struct.NpkString { ptr @.str.data.324, i64 0 }
@.str.data.326 = private constant [2 x i8] c"|\00"
@.str.327 = private constant %struct.NpkString { ptr @.str.data.326, i64 1 }
@.str.data.328 = private constant [1 x i8] zeroinitializer
@.str.329 = private constant %struct.NpkString { ptr @.str.data.328, i64 0 }
@.str.data.330 = private constant [2 x i8] c"|\00"
@.str.331 = private constant %struct.NpkString { ptr @.str.data.330, i64 1 }
@.str.data.332 = private constant [7 x i8] c"--help\00"
@.str.333 = private constant %struct.NpkString { ptr @.str.data.332, i64 6 }
@.str.data.334 = private constant [40 x i8] c"Usage: napit <request_file> [options]\0A\0A\00"
@.str.335 = private constant %struct.NpkString { ptr @.str.data.334, i64 39 }
@.str.data.336 = private constant [10 x i8] c"Options:\0A\00"
@.str.337 = private constant %struct.NpkString { ptr @.str.data.336, i64 9 }
@.str.data.338 = private constant [46 x i8] c"  --output <file> Save response body to file\0A\00"
@.str.339 = private constant %struct.NpkString { ptr @.str.data.338, i64 45 }
@.str.data.340 = private constant [49 x i8] c"  --env <file>    Load variables from .env file\0A\00"
@.str.341 = private constant %struct.NpkString { ptr @.str.data.340, i64 48 }
@.str.data.342 = private constant [58 x i8] c"  --verbose, -v   Print verbose outgoing request details\0A\00"
@.str.343 = private constant %struct.NpkString { ptr @.str.data.342, i64 57 }
@.str.data.344 = private constant [42 x i8] c"  --help          Show this help message\0A\00"
@.str.345 = private constant %struct.NpkString { ptr @.str.data.344, i64 41 }
@.str.data.346 = private constant [44 x i8] c"  --version       Show version information\0A\00"
@.str.347 = private constant %struct.NpkString { ptr @.str.data.346, i64 43 }
@.str.data.348 = private constant [10 x i8] c"--version\00"
@.str.349 = private constant %struct.NpkString { ptr @.str.data.348, i64 9 }
@.str.data.350 = private constant [14 x i8] c"napit v0.1.0\0A\00"
@.str.351 = private constant %struct.NpkString { ptr @.str.data.350, i64 13 }
@.str.data.352 = private constant [34 x i8] c"Error: No request file provided.\0A\00"
@.str.353 = private constant %struct.NpkString { ptr @.str.data.352, i64 33 }
@.str.data.354 = private constant [31 x i8] c"Run 'napit --help' for usage.\0A\00"
@.str.355 = private constant %struct.NpkString { ptr @.str.data.354, i64 30 }
@.str.data.356 = private constant [3 x i8] c"--\00"
@.str.357 = private constant %struct.NpkString { ptr @.str.data.356, i64 2 }
@.str.data.358 = private constant [53 x i8] c"Error: The first argument must be the request file.\0A\00"
@.str.359 = private constant %struct.NpkString { ptr @.str.data.358, i64 52 }
@.str.data.360 = private constant [9 x i8] c"--output\00"
@.str.361 = private constant %struct.NpkString { ptr @.str.data.360, i64 8 }
@.str.data.362 = private constant [6 x i8] c"--env\00"
@.str.363 = private constant %struct.NpkString { ptr @.str.data.362, i64 5 }
@.str.data.364 = private constant [10 x i8] c"--verbose\00"
@.str.365 = private constant %struct.NpkString { ptr @.str.data.364, i64 9 }
@.str.data.366 = private constant [3 x i8] c"-v\00"
@.str.367 = private constant %struct.NpkString { ptr @.str.data.366, i64 2 }
@.str.data.368 = private constant [25 x i8] c"Executing request from: \00"
@.str.369 = private constant %struct.NpkString { ptr @.str.data.368, i64 24 }
@.str.data.370 = private constant [2 x i8] c"\0A\00"
@.str.371 = private constant %struct.NpkString { ptr @.str.data.370, i64 1 }
@.str.data.372 = private constant [27 x i8] c"\0A--- Outgoing Request ---\0A\00"
@.str.373 = private constant %struct.NpkString { ptr @.str.data.372, i64 26 }
@.str.data.374 = private constant [2 x i8] c" \00"
@.str.375 = private constant %struct.NpkString { ptr @.str.data.374, i64 1 }
@.str.data.376 = private constant [2 x i8] c"\0A\00"
@.str.377 = private constant %struct.NpkString { ptr @.str.data.376, i64 1 }
@.str.data.378 = private constant [2 x i8] c"|\00"
@.str.379 = private constant %struct.NpkString { ptr @.str.data.378, i64 1 }
@.str.data.380 = private constant [2 x i8] c"\0A\00"
@.str.381 = private constant %struct.NpkString { ptr @.str.data.380, i64 1 }
@.str.data.382 = private constant [2 x i8] c"\0A\00"
@.str.383 = private constant %struct.NpkString { ptr @.str.data.382, i64 1 }
@.str.data.384 = private constant [2 x i8] c"\0A\00"
@.str.385 = private constant %struct.NpkString { ptr @.str.data.384, i64 1 }
@.str.data.386 = private constant [2 x i8] c"\0A\00"
@.str.387 = private constant %struct.NpkString { ptr @.str.data.386, i64 1 }
@.str.data.388 = private constant [27 x i8] c"------------------------\0A\0A\00"
@.str.389 = private constant %struct.NpkString { ptr @.str.data.388, i64 26 }
@.str.data.390 = private constant [24 x i8] c"Dispatching request to \00"
@.str.391 = private constant %struct.NpkString { ptr @.str.data.390, i64 23 }
@.str.data.392 = private constant [6 x i8] c"...\0A\0A\00"
@.str.393 = private constant %struct.NpkString { ptr @.str.data.392, i64 5 }
@.str.data.394 = private constant [25 x i8] c"Response body saved to: \00"
@.str.395 = private constant %struct.NpkString { ptr @.str.data.394, i64 24 }
@.str.data.396 = private constant [2 x i8] c"\0A\00"
@.str.397 = private constant %struct.NpkString { ptr @.str.data.396, i64 1 }
@.str.data.398 = private constant [48 x i8] c"Error: Could not open output file for writing.\0A\00"
@.str.399 = private constant %struct.NpkString { ptr @.str.data.398, i64 47 }

declare ptr @cli_register_flag(ptr, ptr)

declare ptr @cli_register_option(ptr, ptr, ptr)

declare ptr @cli_parse()

declare i64 @cli_get_flag(ptr)

declare ptr @cli_get_option(ptr)

declare i64 @cli_get_positional_count()

declare ptr @cli_get_positional(i64)

define linkonce_odr { %struct.NIL, ptr, i8 } @nitpick_cli.Cli_register_flag(ptr %name, ptr %short_name) {
entry:
  %calltmp = call ptr @cli_register_flag(ptr %name, ptr %short_name)
  ret { %struct.NIL, ptr, i8 } zeroinitializer
}

define linkonce_odr { %struct.NIL, ptr, i8 } @nitpick_cli.Cli_register_option(ptr %name, ptr %short_name, ptr %default_val) {
entry:
  %calltmp = call ptr @cli_register_option(ptr %name, ptr %short_name, ptr %default_val)
  ret { %struct.NIL, ptr, i8 } zeroinitializer
}

define linkonce_odr { %struct.NIL, ptr, i8 } @nitpick_cli.Cli_parse() {
entry:
  %calltmp = call ptr @cli_parse()
  ret { %struct.NIL, ptr, i8 } zeroinitializer
}

define linkonce_odr { i64, ptr, i8 } @nitpick_cli.Cli_get_flag(ptr %name) {
entry:
  %calltmp = call i64 @cli_get_flag(ptr %name)
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %calltmp, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_cli.Cli_get_option(ptr %name) {
entry:
  %calltmp = call ptr @cli_get_option(ptr %name)
  %ffi_strlen = call i64 @strlen(ptr %calltmp)
  %ffi_str_gc = call ptr @npk_gc_alloc(i64 16)
  %ffi_data_sz = add i64 %ffi_strlen, 1
  %ffi_data_gc = call ptr @npk_gc_alloc(i64 %ffi_data_sz)
  %0 = call ptr @memcpy(ptr %ffi_data_gc, ptr %calltmp, i64 %ffi_data_sz)
  %ffi_str_data = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc, i32 0, i32 0
  store ptr %ffi_data_gc, ptr %ffi_str_data, align 8
  %ffi_str_len = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc, i32 0, i32 1
  store i64 %ffi_strlen, ptr %ffi_str_len, align 4
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %ffi_str_gc, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { i64, ptr, i8 } @nitpick_cli.Cli_get_positional_count() {
entry:
  %calltmp = call i64 @cli_get_positional_count()
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %calltmp, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_cli.Cli_get_positional(i64 %index) {
entry:
  %index.addr = alloca i64, align 8
  store i64 %index, ptr %index.addr, align 4
  %index1 = load i64, ptr %index.addr, align 4
  %calltmp = call ptr @cli_get_positional(i64 %index1)
  %ffi_strlen = call i64 @strlen(ptr %calltmp)
  %ffi_str_gc = call ptr @npk_gc_alloc(i64 16)
  %ffi_data_sz = add i64 %ffi_strlen, 1
  %ffi_data_gc = call ptr @npk_gc_alloc(i64 %ffi_data_sz)
  %0 = call ptr @memcpy(ptr %ffi_data_gc, ptr %calltmp, i64 %ffi_data_sz)
  %ffi_str_data = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc, i32 0, i32 0
  store ptr %ffi_data_gc, ptr %ffi_str_data, align 8
  %ffi_str_len = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc, i32 0, i32 1
  store i64 %ffi_strlen, ptr %ffi_str_len, align 4
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %ffi_str_gc, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

declare i64 @strlen(ptr)

declare ptr @npk_gc_alloc(i64)

declare ptr @memcpy(ptr, ptr, i64)

define linkonce_odr i32 @__nitpick_cli_init() {
entry:
  ret i32 0
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_args._args_token(ptr %args, i32 %n) {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  %len = alloca i64, align 8
  %str = load %struct.NpkString, ptr %args, align 8
  %length = extractvalue %struct.NpkString %str, 1
  store i64 %length, ptr %len, align 4
  %start = alloca i64, align 8
  store i64 1, ptr %start, align 4
  %remaining = alloca i32, align 4
  %n1 = load i32, ptr %n.addr, align 4
  store i32 %n1, ptr %remaining, align 4
  %rest = alloca ptr, align 8
  store ptr @.str, ptr %rest, align 8
  %sep = alloca i64, align 8
  store i64 0, ptr %sep, align 4
  %len2 = load i64, ptr %len, align 4
  %lttmp = icmp slt i64 %len2, 2
  %ifcond = icmp ne i1 %lttmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { ptr, ptr, i8 } { ptr @.str.2, ptr null, i8 0 }

ifcont:                                           ; preds = %entry
  br label %whilecond

whilecond:                                        ; preds = %ifcont19, %ifcont
  %remaining3 = load i32, ptr %remaining, align 4
  %getmp = icmp sge i32 %remaining3, 0
  %whilecond4 = icmp ne i1 %getmp, false
  br i1 %whilecond4, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %start5 = load i64, ptr %start, align 4
  %len6 = load i64, ptr %len, align 4
  %substr_result = call ptr @npk_string_substring_simple(ptr %args, i64 %start5, i64 %len6)
  store ptr %substr_result, ptr %rest, align 8
  %rest7 = load ptr, ptr %rest, align 8
  %index_of_result = call i64 @npk_string_index_of_simple(ptr %rest7, ptr @.str.4)
  store i64 %index_of_result, ptr %sep, align 4
  %sep8 = load i64, ptr %sep, align 4
  %lttmp9 = icmp slt i64 %sep8, 0
  %ifcond10 = icmp ne i1 %lttmp9, false
  br i1 %ifcond10, label %then11, label %ifcont12

then11:                                           ; preds = %whilebody
  ret { ptr, ptr, i8 } { ptr @.str.6, ptr null, i8 0 }

ifcont12:                                         ; preds = %whilebody
  %remaining13 = load i32, ptr %remaining, align 4
  %eqtmp = icmp eq i32 %remaining13, 0
  %ifcond14 = icmp ne i1 %eqtmp, false
  br i1 %ifcond14, label %then15, label %ifcont19

then15:                                           ; preds = %ifcont12
  %rest16 = load ptr, ptr %rest, align 8
  %sep17 = load i64, ptr %sep, align 4
  %substr_result18 = call ptr @npk_string_substring_simple(ptr %rest16, i64 0, i64 %sep17)
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %substr_result18, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error

ifcont19:                                         ; preds = %ifcont12
  %remaining20 = load i32, ptr %remaining, align 4
  %subtmp = sub i32 %remaining20, 1
  store i32 %subtmp, ptr %remaining, align 4
  %start21 = load i64, ptr %start, align 4
  %sep22 = load i64, ptr %sep, align 4
  %addtmp = add i64 %start21, %sep22
  %addtmp23 = add i64 %addtmp, 1
  store i64 %addtmp23, ptr %start, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  ret { ptr, ptr, i8 } { ptr @.str.8, ptr null, i8 0 }
}

define linkonce_odr { i1, ptr, i8 } @nitpick_args.args_has(ptr %args, ptr %flag) {
entry:
  %needle = alloca ptr, align 8
  %concat_str = call ptr @npk_string_concat_simple(ptr %flag, ptr @.str.11)
  %concat_str1 = call ptr @npk_string_concat_simple(ptr @.str.10, ptr %concat_str)
  store ptr %concat_str1, ptr %needle, align 8
  %needle2 = load ptr, ptr %needle, align 8
  %haystack = load %struct.NpkString, ptr %args, align 8
  %needle3 = load %struct.NpkString, ptr %needle2, align 8
  %contains = call i1 @npk_string_contains(%struct.NpkString %haystack, %struct.NpkString %needle3)
  %result.val = insertvalue { i1, ptr, i8 } undef, i1 %contains, 0
  %result.err = insertvalue { i1, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i1, ptr, i8 } %result.err, i8 0, 2
  ret { i1, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_args.args_get(ptr %args, ptr %key) {
entry:
  %needle = alloca ptr, align 8
  %concat_str = call ptr @npk_string_concat_simple(ptr %key, ptr @.str.14)
  %concat_str1 = call ptr @npk_string_concat_simple(ptr @.str.13, ptr %concat_str)
  store ptr %concat_str1, ptr %needle, align 8
  %pos = alloca i64, align 8
  %needle2 = load ptr, ptr %needle, align 8
  %index_of_result = call i64 @npk_string_index_of_simple(ptr %args, ptr %needle2)
  store i64 %index_of_result, ptr %pos, align 4
  %value_start = alloca i64, align 8
  %pos3 = load i64, ptr %pos, align 4
  %needle4 = load ptr, ptr %needle, align 8
  %str = load %struct.NpkString, ptr %needle4, align 8
  %length = extractvalue %struct.NpkString %str, 1
  %addtmp = add i64 %pos3, %length
  store i64 %addtmp, ptr %value_start, align 4
  %len = alloca i64, align 8
  %str5 = load %struct.NpkString, ptr %args, align 8
  %length6 = extractvalue %struct.NpkString %str5, 1
  store i64 %length6, ptr %len, align 4
  %rest = alloca ptr, align 8
  store ptr @.str.16, ptr %rest, align 8
  %sep = alloca i64, align 8
  store i64 0, ptr %sep, align 4
  %pos7 = load i64, ptr %pos, align 4
  %lttmp = icmp slt i64 %pos7, 0
  %ifcond = icmp ne i1 %lttmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { ptr, ptr, i8 } { ptr @.str.18, ptr null, i8 0 }

ifcont:                                           ; preds = %entry
  %value_start8 = load i64, ptr %value_start, align 4
  %len9 = load i64, ptr %len, align 4
  %getmp = icmp sge i64 %value_start8, %len9
  %ifcond10 = icmp ne i1 %getmp, false
  br i1 %ifcond10, label %then11, label %ifcont12

then11:                                           ; preds = %ifcont
  ret { ptr, ptr, i8 } { ptr @.str.20, ptr null, i8 0 }

ifcont12:                                         ; preds = %ifcont
  %value_start13 = load i64, ptr %value_start, align 4
  %len14 = load i64, ptr %len, align 4
  %substr_result = call ptr @npk_string_substring_simple(ptr %args, i64 %value_start13, i64 %len14)
  store ptr %substr_result, ptr %rest, align 8
  %rest15 = load ptr, ptr %rest, align 8
  %index_of_result16 = call i64 @npk_string_index_of_simple(ptr %rest15, ptr @.str.22)
  store i64 %index_of_result16, ptr %sep, align 4
  %sep17 = load i64, ptr %sep, align 4
  %letmp = icmp sle i64 %sep17, 0
  %ifcond18 = icmp ne i1 %letmp, false
  br i1 %ifcond18, label %then19, label %ifcont20

then19:                                           ; preds = %ifcont12
  ret { ptr, ptr, i8 } { ptr @.str.24, ptr null, i8 0 }

ifcont20:                                         ; preds = %ifcont12
  %rest21 = load ptr, ptr %rest, align 8
  %sep22 = load i64, ptr %sep, align 4
  %substr_result23 = call ptr @npk_string_substring_simple(ptr %rest21, i64 0, i64 %sep22)
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %substr_result23, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_args.args_get_or(ptr %args, ptr %key, ptr %default_val) {
entry:
  %result = alloca ptr, align 8
  %calltmp = call { ptr, ptr, i8 } @nitpick_args.args_get(ptr %args, ptr %key)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  store ptr %raw.value, ptr %result, align 8
  %result1 = load ptr, ptr %result, align 8
  %str = load %struct.NpkString, ptr %result1, align 8
  %length = extractvalue %struct.NpkString %str, 1
  %eqtmp = icmp eq i64 %length, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %default_val, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error

ifcont:                                           ; preds = %entry
  %result2 = load ptr, ptr %result, align 8
  %result.val3 = insertvalue { ptr, ptr, i8 } undef, ptr %result2, 0
  %result.err4 = insertvalue { ptr, ptr, i8 } %result.val3, ptr null, 1
  %result.is_error5 = insertvalue { ptr, ptr, i8 } %result.err4, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error5
}

define linkonce_odr { i32, ptr, i8 } @nitpick_args.args_get_int(ptr %args, ptr %key, i32 %default_val) {
entry:
  %default_val.addr = alloca i32, align 4
  store i32 %default_val, ptr %default_val.addr, align 4
  %val = alloca ptr, align 8
  %calltmp = call { ptr, ptr, i8 } @nitpick_args.args_get_or(ptr %args, ptr %key, ptr @.str.26)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  store ptr %raw.value, ptr %val, align 8
  %res = alloca i32, align 4
  store i32 0, ptr %res, align 4
  %sign = alloca i32, align 4
  store i32 1, ptr %sign, align 4
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  %len = alloca i64, align 8
  %val1 = load ptr, ptr %val, align 8
  %str = load %struct.NpkString, ptr %val1, align 8
  %length = extractvalue %struct.NpkString %str, 1
  store i64 %length, ptr %len, align 4
  %c0 = alloca ptr, align 8
  store ptr @.str.28, ptr %c0, align 8
  %c = alloca ptr, align 8
  store ptr @.str.30, ptr %c, align 8
  %len2 = load i64, ptr %len, align 4
  %eqtmp = icmp eq i64 %len2, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  %default_val3 = load i32, ptr %default_val.addr, align 4
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %default_val3, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error

ifcont:                                           ; preds = %entry
  %val4 = load ptr, ptr %val, align 8
  %substr_result = call ptr @npk_string_substring_simple(ptr %val4, i64 0, i64 1)
  store ptr %substr_result, ptr %c0, align 8
  %c05 = load ptr, ptr %c0, align 8
  %str1 = load %struct.NpkString, ptr %c05, align 8
  %str2 = load %struct.NpkString, ptr @.str.32, align 8
  %equals = call i1 @npk_string_equals(%struct.NpkString %str1, %struct.NpkString %str2)
  %ifcond6 = icmp ne i1 %equals, false
  br i1 %ifcond6, label %then7, label %ifcont8

then7:                                            ; preds = %ifcont
  store i32 -1, ptr %sign, align 4
  store i64 1, ptr %i, align 4
  br label %ifcont8

ifcont8:                                          ; preds = %then7, %ifcont
  br label %whilecond

whilecond:                                        ; preds = %ifcont97, %ifcont8
  %i9 = load i64, ptr %i, align 4
  %len10 = load i64, ptr %len, align 4
  %lttmp = icmp slt i64 %i9, %len10
  %whilecond11 = icmp ne i1 %lttmp, false
  br i1 %whilecond11, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %val12 = load ptr, ptr %val, align 8
  %i13 = load i64, ptr %i, align 4
  %i14 = load i64, ptr %i, align 4
  %addtmp = add i64 %i14, 1
  %substr_result15 = call ptr @npk_string_substring_simple(ptr %val12, i64 %i13, i64 %addtmp)
  store ptr %substr_result15, ptr %c, align 8
  %res16 = load i32, ptr %res, align 4
  %multmp = mul i32 %res16, 10
  store i32 %multmp, ptr %res, align 4
  %c17 = load ptr, ptr %c, align 8
  %str118 = load %struct.NpkString, ptr %c17, align 8
  %str219 = load %struct.NpkString, ptr @.str.34, align 8
  %equals20 = call i1 @npk_string_equals(%struct.NpkString %str118, %struct.NpkString %str219)
  %ifcond21 = icmp ne i1 %equals20, false
  br i1 %ifcond21, label %then22, label %ifcont25

then22:                                           ; preds = %whilebody
  %res23 = load i32, ptr %res, align 4
  %addtmp24 = add i32 %res23, 1
  store i32 %addtmp24, ptr %res, align 4
  br label %ifcont25

ifcont25:                                         ; preds = %then22, %whilebody
  %c26 = load ptr, ptr %c, align 8
  %str127 = load %struct.NpkString, ptr %c26, align 8
  %str228 = load %struct.NpkString, ptr @.str.36, align 8
  %equals29 = call i1 @npk_string_equals(%struct.NpkString %str127, %struct.NpkString %str228)
  %ifcond30 = icmp ne i1 %equals29, false
  br i1 %ifcond30, label %then31, label %ifcont34

then31:                                           ; preds = %ifcont25
  %res32 = load i32, ptr %res, align 4
  %addtmp33 = add i32 %res32, 2
  store i32 %addtmp33, ptr %res, align 4
  br label %ifcont34

ifcont34:                                         ; preds = %then31, %ifcont25
  %c35 = load ptr, ptr %c, align 8
  %str136 = load %struct.NpkString, ptr %c35, align 8
  %str237 = load %struct.NpkString, ptr @.str.38, align 8
  %equals38 = call i1 @npk_string_equals(%struct.NpkString %str136, %struct.NpkString %str237)
  %ifcond39 = icmp ne i1 %equals38, false
  br i1 %ifcond39, label %then40, label %ifcont43

then40:                                           ; preds = %ifcont34
  %res41 = load i32, ptr %res, align 4
  %addtmp42 = add i32 %res41, 3
  store i32 %addtmp42, ptr %res, align 4
  br label %ifcont43

ifcont43:                                         ; preds = %then40, %ifcont34
  %c44 = load ptr, ptr %c, align 8
  %str145 = load %struct.NpkString, ptr %c44, align 8
  %str246 = load %struct.NpkString, ptr @.str.40, align 8
  %equals47 = call i1 @npk_string_equals(%struct.NpkString %str145, %struct.NpkString %str246)
  %ifcond48 = icmp ne i1 %equals47, false
  br i1 %ifcond48, label %then49, label %ifcont52

then49:                                           ; preds = %ifcont43
  %res50 = load i32, ptr %res, align 4
  %addtmp51 = add i32 %res50, 4
  store i32 %addtmp51, ptr %res, align 4
  br label %ifcont52

ifcont52:                                         ; preds = %then49, %ifcont43
  %c53 = load ptr, ptr %c, align 8
  %str154 = load %struct.NpkString, ptr %c53, align 8
  %str255 = load %struct.NpkString, ptr @.str.42, align 8
  %equals56 = call i1 @npk_string_equals(%struct.NpkString %str154, %struct.NpkString %str255)
  %ifcond57 = icmp ne i1 %equals56, false
  br i1 %ifcond57, label %then58, label %ifcont61

then58:                                           ; preds = %ifcont52
  %res59 = load i32, ptr %res, align 4
  %addtmp60 = add i32 %res59, 5
  store i32 %addtmp60, ptr %res, align 4
  br label %ifcont61

ifcont61:                                         ; preds = %then58, %ifcont52
  %c62 = load ptr, ptr %c, align 8
  %str163 = load %struct.NpkString, ptr %c62, align 8
  %str264 = load %struct.NpkString, ptr @.str.44, align 8
  %equals65 = call i1 @npk_string_equals(%struct.NpkString %str163, %struct.NpkString %str264)
  %ifcond66 = icmp ne i1 %equals65, false
  br i1 %ifcond66, label %then67, label %ifcont70

then67:                                           ; preds = %ifcont61
  %res68 = load i32, ptr %res, align 4
  %addtmp69 = add i32 %res68, 6
  store i32 %addtmp69, ptr %res, align 4
  br label %ifcont70

ifcont70:                                         ; preds = %then67, %ifcont61
  %c71 = load ptr, ptr %c, align 8
  %str172 = load %struct.NpkString, ptr %c71, align 8
  %str273 = load %struct.NpkString, ptr @.str.46, align 8
  %equals74 = call i1 @npk_string_equals(%struct.NpkString %str172, %struct.NpkString %str273)
  %ifcond75 = icmp ne i1 %equals74, false
  br i1 %ifcond75, label %then76, label %ifcont79

then76:                                           ; preds = %ifcont70
  %res77 = load i32, ptr %res, align 4
  %addtmp78 = add i32 %res77, 7
  store i32 %addtmp78, ptr %res, align 4
  br label %ifcont79

ifcont79:                                         ; preds = %then76, %ifcont70
  %c80 = load ptr, ptr %c, align 8
  %str181 = load %struct.NpkString, ptr %c80, align 8
  %str282 = load %struct.NpkString, ptr @.str.48, align 8
  %equals83 = call i1 @npk_string_equals(%struct.NpkString %str181, %struct.NpkString %str282)
  %ifcond84 = icmp ne i1 %equals83, false
  br i1 %ifcond84, label %then85, label %ifcont88

then85:                                           ; preds = %ifcont79
  %res86 = load i32, ptr %res, align 4
  %addtmp87 = add i32 %res86, 8
  store i32 %addtmp87, ptr %res, align 4
  br label %ifcont88

ifcont88:                                         ; preds = %then85, %ifcont79
  %c89 = load ptr, ptr %c, align 8
  %str190 = load %struct.NpkString, ptr %c89, align 8
  %str291 = load %struct.NpkString, ptr @.str.50, align 8
  %equals92 = call i1 @npk_string_equals(%struct.NpkString %str190, %struct.NpkString %str291)
  %ifcond93 = icmp ne i1 %equals92, false
  br i1 %ifcond93, label %then94, label %ifcont97

then94:                                           ; preds = %ifcont88
  %res95 = load i32, ptr %res, align 4
  %addtmp96 = add i32 %res95, 9
  store i32 %addtmp96, ptr %res, align 4
  br label %ifcont97

ifcont97:                                         ; preds = %then94, %ifcont88
  %i98 = load i64, ptr %i, align 4
  %addtmp99 = add i64 %i98, 1
  store i64 %addtmp99, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %res100 = load i32, ptr %res, align 4
  %sign101 = load i32, ptr %sign, align 4
  %multmp102 = mul i32 %res100, %sign101
  %result.val103 = insertvalue { i32, ptr, i8 } undef, i32 %multmp102, 0
  %result.err104 = insertvalue { i32, ptr, i8 } %result.val103, ptr null, 1
  %result.is_error105 = insertvalue { i32, ptr, i8 } %result.err104, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error105
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_args.args_at(ptr %args, i32 %n) {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  %n1 = load i32, ptr %n.addr, align 4
  %calltmp = call { ptr, ptr, i8 } @nitpick_args._args_token(ptr %args, i32 %n1)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %raw.value, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_args.args_program(ptr %args) {
entry:
  %calltmp = call { ptr, ptr, i8 } @nitpick_args._args_token(ptr %args, i32 0)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %raw.value, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { i32, ptr, i8 } @nitpick_args.args_count(ptr %args) {
entry:
  %len = alloca i64, align 8
  %str = load %struct.NpkString, ptr %args, align 8
  %length = extractvalue %struct.NpkString %str, 1
  store i64 %length, ptr %len, align 4
  %pipes = alloca i64, align 8
  store i64 0, ptr %pipes, align 4
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  %count = alloca i64, align 8
  store i64 0, ptr %count, align 4
  %ch = alloca ptr, align 8
  store ptr @.str.52, ptr %ch, align 8
  br label %whilecond

whilecond:                                        ; preds = %ifcont, %entry
  %i1 = load i64, ptr %i, align 4
  %len2 = load i64, ptr %len, align 4
  %lttmp = icmp slt i64 %i1, %len2
  %whilecond3 = icmp ne i1 %lttmp, false
  br i1 %whilecond3, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %i4 = load i64, ptr %i, align 4
  %i5 = load i64, ptr %i, align 4
  %addtmp = add i64 %i5, 1
  %substr_result = call ptr @npk_string_substring_simple(ptr %args, i64 %i4, i64 %addtmp)
  store ptr %substr_result, ptr %ch, align 8
  %ch6 = load ptr, ptr %ch, align 8
  %str1 = load %struct.NpkString, ptr %ch6, align 8
  %str2 = load %struct.NpkString, ptr @.str.54, align 8
  %equals = call i1 @npk_string_equals(%struct.NpkString %str1, %struct.NpkString %str2)
  %ifcond = icmp ne i1 %equals, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %whilebody
  %pipes7 = load i64, ptr %pipes, align 4
  %addtmp8 = add i64 %pipes7, 1
  store i64 %addtmp8, ptr %pipes, align 4
  br label %ifcont

ifcont:                                           ; preds = %then, %whilebody
  %i9 = load i64, ptr %i, align 4
  %addtmp10 = add i64 %i9, 1
  store i64 %addtmp10, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %pipes11 = load i64, ptr %pipes, align 4
  %subtmp = sub i64 %pipes11, 2
  store i64 %subtmp, ptr %count, align 4
  %count12 = load i64, ptr %count, align 4
  %lttmp13 = icmp slt i64 %count12, 0
  %ifcond14 = icmp ne i1 %lttmp13, false
  br i1 %ifcond14, label %then15, label %ifcont16

then15:                                           ; preds = %afterwhile
  ret { i32, ptr, i8 } zeroinitializer

ifcont16:                                         ; preds = %afterwhile
  %count17 = load i64, ptr %count, align 4
  %cast.trunc = trunc i64 %count17 to i32
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %cast.trunc, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error
}

define linkonce_odr { %ArgParser, ptr, i8 } @nitpick_args.Parser_create() {
entry:
  %p = alloca %ArgParser, align 8
  %keys.ptr = getelementptr inbounds nuw %ArgParser, ptr %p, i32 0, i32 0
  store ptr @.str.56, ptr %keys.ptr, align 8
  %descs.ptr = getelementptr inbounds nuw %ArgParser, ptr %p, i32 0, i32 1
  store ptr @.str.58, ptr %descs.ptr, align 8
  %types.ptr = getelementptr inbounds nuw %ArgParser, ptr %p, i32 0, i32 2
  store ptr @.str.60, ptr %types.ptr, align 8
  %p1 = load %ArgParser, ptr %p, align 8
  %result.val = insertvalue { %ArgParser, ptr, i8 } undef, %ArgParser %p1, 0
  %result.err = insertvalue { %ArgParser, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { %ArgParser, ptr, i8 } %result.err, i8 0, 2
  ret { %ArgParser, ptr, i8 } %result.is_error
}

define linkonce_odr { %ArgParser, ptr, i8 } @nitpick_args.Parser_add_flag(%ArgParser %p, ptr %key, ptr %desc) {
entry:
  %p_alloca = alloca %ArgParser, align 8
  store %ArgParser %p, ptr %p_alloca, align 8
  %out = alloca %ArgParser, align 8
  %p1 = load %ArgParser, ptr %p_alloca, align 8
  store %ArgParser %p1, ptr %out, align 8
  %out2 = load %ArgParser, ptr %out, align 8
  %keys = extractvalue %ArgParser %out2, 0
  %concat_str = call ptr @npk_string_concat_simple(ptr %key, ptr @.str.62)
  %concat_str3 = call ptr @npk_string_concat_simple(ptr %keys, ptr %concat_str)
  %keys.ptr = getelementptr inbounds nuw %ArgParser, ptr %out, i32 0, i32 0
  store ptr %concat_str3, ptr %keys.ptr, align 8
  %out4 = load %ArgParser, ptr %out, align 8
  %descs = extractvalue %ArgParser %out4, 1
  %concat_str5 = call ptr @npk_string_concat_simple(ptr %desc, ptr @.str.64)
  %concat_str6 = call ptr @npk_string_concat_simple(ptr %descs, ptr %concat_str5)
  %descs.ptr = getelementptr inbounds nuw %ArgParser, ptr %out, i32 0, i32 1
  store ptr %concat_str6, ptr %descs.ptr, align 8
  %out7 = load %ArgParser, ptr %out, align 8
  %types = extractvalue %ArgParser %out7, 2
  %concat_str8 = call ptr @npk_string_concat_simple(ptr %types, ptr @.str.66)
  %types.ptr = getelementptr inbounds nuw %ArgParser, ptr %out, i32 0, i32 2
  store ptr %concat_str8, ptr %types.ptr, align 8
  %out9 = load %ArgParser, ptr %out, align 8
  %result.val = insertvalue { %ArgParser, ptr, i8 } undef, %ArgParser %out9, 0
  %result.err = insertvalue { %ArgParser, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { %ArgParser, ptr, i8 } %result.err, i8 0, 2
  ret { %ArgParser, ptr, i8 } %result.is_error
}

define linkonce_odr { %ArgParser, ptr, i8 } @nitpick_args.Parser_add_option(%ArgParser %p, ptr %key, ptr %desc) {
entry:
  %p_alloca = alloca %ArgParser, align 8
  store %ArgParser %p, ptr %p_alloca, align 8
  %out = alloca %ArgParser, align 8
  %p1 = load %ArgParser, ptr %p_alloca, align 8
  store %ArgParser %p1, ptr %out, align 8
  %out2 = load %ArgParser, ptr %out, align 8
  %keys = extractvalue %ArgParser %out2, 0
  %concat_str = call ptr @npk_string_concat_simple(ptr %key, ptr @.str.68)
  %concat_str3 = call ptr @npk_string_concat_simple(ptr %keys, ptr %concat_str)
  %keys.ptr = getelementptr inbounds nuw %ArgParser, ptr %out, i32 0, i32 0
  store ptr %concat_str3, ptr %keys.ptr, align 8
  %out4 = load %ArgParser, ptr %out, align 8
  %descs = extractvalue %ArgParser %out4, 1
  %concat_str5 = call ptr @npk_string_concat_simple(ptr %desc, ptr @.str.70)
  %concat_str6 = call ptr @npk_string_concat_simple(ptr %descs, ptr %concat_str5)
  %descs.ptr = getelementptr inbounds nuw %ArgParser, ptr %out, i32 0, i32 1
  store ptr %concat_str6, ptr %descs.ptr, align 8
  %out7 = load %ArgParser, ptr %out, align 8
  %types = extractvalue %ArgParser %out7, 2
  %concat_str8 = call ptr @npk_string_concat_simple(ptr %types, ptr @.str.72)
  %types.ptr = getelementptr inbounds nuw %ArgParser, ptr %out, i32 0, i32 2
  store ptr %concat_str8, ptr %types.ptr, align 8
  %out9 = load %ArgParser, ptr %out, align 8
  %result.val = insertvalue { %ArgParser, ptr, i8 } undef, %ArgParser %out9, 0
  %result.err = insertvalue { %ArgParser, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { %ArgParser, ptr, i8 } %result.err, i8 0, 2
  ret { %ArgParser, ptr, i8 } %result.is_error
}

define linkonce_odr { %struct.NIL, ptr, i8 } @nitpick_args.Parser_print_help(%ArgParser %p) {
entry:
  %p_alloca = alloca %ArgParser, align 8
  store %ArgParser %p, ptr %p_alloca, align 8
  %i = alloca i32, align 4
  store i32 0, ptr %i, align 4
  %running = alloca i32, align 4
  store i32 1, ptr %running, align 4
  %key = alloca ptr, align 8
  store ptr @.str.74, ptr %key, align 8
  %desc = alloca ptr, align 8
  store ptr @.str.76, ptr %desc, align 8
  %typ = alloca ptr, align 8
  store ptr @.str.78, ptr %typ, align 8
  %calltmp = call ptr @nitpick_cli_bright_green(ptr @.str.80)
  %ffi_strlen = call i64 @strlen(ptr %calltmp)
  %ffi_str_gc = call ptr @npk_gc_alloc(i64 16)
  %ffi_data_sz = add i64 %ffi_strlen, 1
  %ffi_data_gc = call ptr @npk_gc_alloc(i64 %ffi_data_sz)
  %0 = call ptr @memcpy(ptr %ffi_data_gc, ptr %calltmp, i64 %ffi_data_sz)
  %ffi_str_data = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc, i32 0, i32 0
  store ptr %ffi_data_gc, ptr %ffi_str_data, align 8
  %ffi_str_len = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc, i32 0, i32 1
  store i64 %ffi_strlen, ptr %ffi_str_len, align 4
  %str_struct = load %struct.NpkString, ptr %ffi_str_gc, align 8
  %str_data = extractvalue %struct.NpkString %str_struct, 0
  %print_call = call i64 @npk_print_cstr(ptr %str_data)
  %str_data1 = load ptr, ptr @.str.82, align 8
  %print_call2 = call i64 @npk_print_cstr(ptr %str_data1)
  %calltmp3 = call ptr @nitpick_cli_bright_green(ptr @.str.84)
  %ffi_strlen4 = call i64 @strlen(ptr %calltmp3)
  %ffi_str_gc5 = call ptr @npk_gc_alloc(i64 16)
  %ffi_data_sz6 = add i64 %ffi_strlen4, 1
  %ffi_data_gc7 = call ptr @npk_gc_alloc(i64 %ffi_data_sz6)
  %1 = call ptr @memcpy(ptr %ffi_data_gc7, ptr %calltmp3, i64 %ffi_data_sz6)
  %ffi_str_data8 = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc5, i32 0, i32 0
  store ptr %ffi_data_gc7, ptr %ffi_str_data8, align 8
  %ffi_str_len9 = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc5, i32 0, i32 1
  store i64 %ffi_strlen4, ptr %ffi_str_len9, align 4
  %str_struct10 = load %struct.NpkString, ptr %ffi_str_gc5, align 8
  %str_data11 = extractvalue %struct.NpkString %str_struct10, 0
  %print_call12 = call i64 @npk_print_cstr(ptr %str_data11)
  br label %whilecond

whilecond:                                        ; preds = %ifcont84, %entry
  %running13 = load i32, ptr %running, align 4
  %eqtmp = icmp eq i32 %running13, 1
  %whilecond14 = icmp ne i1 %eqtmp, false
  br i1 %whilecond14, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %p15 = load %ArgParser, ptr %p_alloca, align 8
  %keys = extractvalue %ArgParser %p15, 0
  %i16 = load i32, ptr %i, align 4
  %calltmp17 = call { ptr, ptr, i8 } @nitpick_args._args_token(ptr %keys, i32 %i16)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp17, 0
  store ptr %raw.value, ptr %key, align 8
  %key18 = load ptr, ptr %key, align 8
  %str = load %struct.NpkString, ptr %key18, align 8
  %length = extractvalue %struct.NpkString %str, 1
  %eqtmp19 = icmp eq i64 %length, 0
  %ifcond = icmp ne i1 %eqtmp19, false
  br i1 %ifcond, label %then, label %else

then:                                             ; preds = %whilebody
  store i32 0, ptr %running, align 4
  br label %ifcont84

else:                                             ; preds = %whilebody
  %p20 = load %ArgParser, ptr %p_alloca, align 8
  %descs = extractvalue %ArgParser %p20, 1
  %i21 = load i32, ptr %i, align 4
  %calltmp22 = call { ptr, ptr, i8 } @nitpick_args._args_token(ptr %descs, i32 %i21)
  %raw.value23 = extractvalue { ptr, ptr, i8 } %calltmp22, 0
  store ptr %raw.value23, ptr %desc, align 8
  %p24 = load %ArgParser, ptr %p_alloca, align 8
  %types = extractvalue %ArgParser %p24, 2
  %i25 = load i32, ptr %i, align 4
  %calltmp26 = call { ptr, ptr, i8 } @nitpick_args._args_token(ptr %types, i32 %i25)
  %raw.value27 = extractvalue { ptr, ptr, i8 } %calltmp26, 0
  store ptr %raw.value27, ptr %typ, align 8
  %str_data28 = load ptr, ptr @.str.86, align 8
  %print_call29 = call i64 @npk_print_cstr(ptr %str_data28)
  %key30 = load ptr, ptr %key, align 8
  %calltmp31 = call ptr @nitpick_cli_cyan(ptr %key30)
  %ffi_strlen32 = call i64 @strlen(ptr %calltmp31)
  %ffi_str_gc33 = call ptr @npk_gc_alloc(i64 16)
  %ffi_data_sz34 = add i64 %ffi_strlen32, 1
  %ffi_data_gc35 = call ptr @npk_gc_alloc(i64 %ffi_data_sz34)
  %2 = call ptr @memcpy(ptr %ffi_data_gc35, ptr %calltmp31, i64 %ffi_data_sz34)
  %ffi_str_data36 = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc33, i32 0, i32 0
  store ptr %ffi_data_gc35, ptr %ffi_str_data36, align 8
  %ffi_str_len37 = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc33, i32 0, i32 1
  store i64 %ffi_strlen32, ptr %ffi_str_len37, align 4
  %str_struct38 = load %struct.NpkString, ptr %ffi_str_gc33, align 8
  %str_data39 = extractvalue %struct.NpkString %str_struct38, 0
  %print_call40 = call i64 @npk_print_cstr(ptr %str_data39)
  %typ41 = load ptr, ptr %typ, align 8
  %str1 = load %struct.NpkString, ptr %typ41, align 8
  %str2 = load %struct.NpkString, ptr @.str.88, align 8
  %equals = call i1 @npk_string_equals(%struct.NpkString %str1, %struct.NpkString %str2)
  %ifcond42 = icmp ne i1 %equals, false
  br i1 %ifcond42, label %then43, label %else56

then43:                                           ; preds = %else
  %str_data44 = load ptr, ptr @.str.90, align 8
  %print_call45 = call i64 @npk_print_cstr(ptr %str_data44)
  %key46 = load ptr, ptr %key, align 8
  %str47 = load %struct.NpkString, ptr %key46, align 8
  %length48 = extractvalue %struct.NpkString %str47, 1
  %lttmp = icmp slt i64 %length48, 6
  %ifcond49 = icmp ne i1 %lttmp, false
  br i1 %ifcond49, label %then50, label %else53

then50:                                           ; preds = %then43
  %str_data51 = load ptr, ptr @.str.92, align 8
  %print_call52 = call i64 @npk_print_cstr(ptr %str_data51)
  br label %ifcont

else53:                                           ; preds = %then43
  %str_data54 = load ptr, ptr @.str.94, align 8
  %print_call55 = call i64 @npk_print_cstr(ptr %str_data54)
  br label %ifcont

ifcont:                                           ; preds = %else53, %then50
  br label %ifcont69

else56:                                           ; preds = %else
  %key57 = load ptr, ptr %key, align 8
  %str58 = load %struct.NpkString, ptr %key57, align 8
  %length59 = extractvalue %struct.NpkString %str58, 1
  %lttmp60 = icmp slt i64 %length59, 14
  %ifcond61 = icmp ne i1 %lttmp60, false
  br i1 %ifcond61, label %then62, label %else65

then62:                                           ; preds = %else56
  %str_data63 = load ptr, ptr @.str.96, align 8
  %print_call64 = call i64 @npk_print_cstr(ptr %str_data63)
  br label %ifcont68

else65:                                           ; preds = %else56
  %str_data66 = load ptr, ptr @.str.98, align 8
  %print_call67 = call i64 @npk_print_cstr(ptr %str_data66)
  br label %ifcont68

ifcont68:                                         ; preds = %else65, %then62
  br label %ifcont69

ifcont69:                                         ; preds = %ifcont68, %ifcont
  %desc70 = load ptr, ptr %desc, align 8
  %calltmp71 = call ptr @nitpick_cli_gray(ptr %desc70)
  %ffi_strlen72 = call i64 @strlen(ptr %calltmp71)
  %ffi_str_gc73 = call ptr @npk_gc_alloc(i64 16)
  %ffi_data_sz74 = add i64 %ffi_strlen72, 1
  %ffi_data_gc75 = call ptr @npk_gc_alloc(i64 %ffi_data_sz74)
  %3 = call ptr @memcpy(ptr %ffi_data_gc75, ptr %calltmp71, i64 %ffi_data_sz74)
  %ffi_str_data76 = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc73, i32 0, i32 0
  store ptr %ffi_data_gc75, ptr %ffi_str_data76, align 8
  %ffi_str_len77 = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc73, i32 0, i32 1
  store i64 %ffi_strlen72, ptr %ffi_str_len77, align 4
  %str_struct78 = load %struct.NpkString, ptr %ffi_str_gc73, align 8
  %str_data79 = extractvalue %struct.NpkString %str_struct78, 0
  %print_call80 = call i64 @npk_print_cstr(ptr %str_data79)
  %str_data81 = load ptr, ptr @.str.100, align 8
  %print_call82 = call i64 @npk_print_cstr(ptr %str_data81)
  %i83 = load i32, ptr %i, align 4
  %addtmp = add i32 %i83, 1
  store i32 %addtmp, ptr %i, align 4
  br label %ifcont84

ifcont84:                                         ; preds = %ifcont69, %then
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %str_data85 = load ptr, ptr @.str.102, align 8
  %print_call86 = call i64 @npk_print_cstr(ptr %str_data85)
  ret { %struct.NIL, ptr, i8 } zeroinitializer
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_args.args_make1(ptr %a0) {
entry:
  %concat_str = call ptr @npk_string_concat_simple(ptr %a0, ptr @.str.105)
  %concat_str1 = call ptr @npk_string_concat_simple(ptr @.str.104, ptr %concat_str)
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %concat_str1, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_args.args_make2(ptr %a0, ptr %a1) {
entry:
  %b = alloca ptr, align 8
  %calltmp = call { ptr, ptr, i8 } @nitpick_args.args_make1(ptr %a0)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  store ptr %raw.value, ptr %b, align 8
  %b1 = load ptr, ptr %b, align 8
  %concat_str = call ptr @npk_string_concat_simple(ptr %a1, ptr @.str.107)
  %concat_str2 = call ptr @npk_string_concat_simple(ptr %b1, ptr %concat_str)
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %concat_str2, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_args.args_make3(ptr %a0, ptr %a1, ptr %a2) {
entry:
  %b = alloca ptr, align 8
  %calltmp = call { ptr, ptr, i8 } @nitpick_args.args_make2(ptr %a0, ptr %a1)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  store ptr %raw.value, ptr %b, align 8
  %b1 = load ptr, ptr %b, align 8
  %concat_str = call ptr @npk_string_concat_simple(ptr %a2, ptr @.str.109)
  %concat_str2 = call ptr @npk_string_concat_simple(ptr %b1, ptr %concat_str)
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %concat_str2, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_args.args_make4(ptr %a0, ptr %a1, ptr %a2, ptr %a3) {
entry:
  %b = alloca ptr, align 8
  %calltmp = call { ptr, ptr, i8 } @nitpick_args.args_make3(ptr %a0, ptr %a1, ptr %a2)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  store ptr %raw.value, ptr %b, align 8
  %b1 = load ptr, ptr %b, align 8
  %concat_str = call ptr @npk_string_concat_simple(ptr %a3, ptr @.str.111)
  %concat_str2 = call ptr @npk_string_concat_simple(ptr %b1, ptr %concat_str)
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %concat_str2, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_args.args_make5(ptr %a0, ptr %a1, ptr %a2, ptr %a3, ptr %a4) {
entry:
  %b = alloca ptr, align 8
  %calltmp = call { ptr, ptr, i8 } @nitpick_args.args_make4(ptr %a0, ptr %a1, ptr %a2, ptr %a3)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  store ptr %raw.value, ptr %b, align 8
  %b1 = load ptr, ptr %b, align 8
  %concat_str = call ptr @npk_string_concat_simple(ptr %a4, ptr @.str.113)
  %concat_str2 = call ptr @npk_string_concat_simple(ptr %b1, ptr %concat_str)
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %concat_str2, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_args.args_make6(ptr %a0, ptr %a1, ptr %a2, ptr %a3, ptr %a4, ptr %a5) {
entry:
  %b = alloca ptr, align 8
  %calltmp = call { ptr, ptr, i8 } @nitpick_args.args_make5(ptr %a0, ptr %a1, ptr %a2, ptr %a3, ptr %a4)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  store ptr %raw.value, ptr %b, align 8
  %b1 = load ptr, ptr %b, align 8
  %concat_str = call ptr @npk_string_concat_simple(ptr %a5, ptr @.str.115)
  %concat_str2 = call ptr @npk_string_concat_simple(ptr %b1, ptr %concat_str)
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %concat_str2, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

declare ptr @nitpick_cli_bright_green(ptr)

declare ptr @nitpick_cli_cyan(ptr)

declare ptr @nitpick_cli_gray(ptr)

declare ptr @npk_string_substring_simple(ptr, i64, i64)

declare i64 @npk_string_index_of_simple(ptr, ptr)

declare void @npk_gc_safepoint()

declare ptr @npk_string_concat_simple(ptr, ptr)

declare i1 @npk_string_contains(%struct.NpkString, %struct.NpkString)

declare i1 @npk_string_equals(%struct.NpkString, %struct.NpkString)

declare i64 @npk_print_cstr(ptr)

define linkonce_odr i32 @__nitpick_args_init() {
entry:
  ret i32 0
}

define linkonce_odr { %Request, ptr, i8 } @types.Request_create(ptr %method, ptr %url) {
entry:
  %r = alloca %Request, align 8
  %method.ptr = getelementptr inbounds nuw %Request, ptr %r, i32 0, i32 0
  store ptr %method, ptr %method.ptr, align 8
  %url.ptr = getelementptr inbounds nuw %Request, ptr %r, i32 0, i32 1
  store ptr %url, ptr %url.ptr, align 8
  %headers_pipe.ptr = getelementptr inbounds nuw %Request, ptr %r, i32 0, i32 2
  store ptr @.str.117, ptr %headers_pipe.ptr, align 8
  %body.ptr = getelementptr inbounds nuw %Request, ptr %r, i32 0, i32 3
  store ptr @.str.119, ptr %body.ptr, align 8
  %timeout.ptr = getelementptr inbounds nuw %Request, ptr %r, i32 0, i32 4
  store i32 30, ptr %timeout.ptr, align 4
  %follow_redirects.ptr = getelementptr inbounds nuw %Request, ptr %r, i32 0, i32 5
  store i32 1, ptr %follow_redirects.ptr, align 4
  %r1 = load %Request, ptr %r, align 8
  %result.val = insertvalue { %Request, ptr, i8 } undef, %Request %r1, 0
  %result.err = insertvalue { %Request, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { %Request, ptr, i8 } %result.err, i8 0, 2
  ret { %Request, ptr, i8 } %result.is_error
}

define linkonce_odr { %Request, ptr, i8 } @types.Request_add_header(%Request %req, ptr %header) {
entry:
  %req_alloca = alloca %Request, align 8
  store %Request %req, ptr %req_alloca, align 8
  %out = alloca %Request, align 8
  %req1 = load %Request, ptr %req_alloca, align 8
  store %Request %req1, ptr %out, align 8
  %out2 = load %Request, ptr %out, align 8
  %headers_pipe = extractvalue %Request %out2, 2
  %concat_str = call ptr @npk_string_concat_simple(ptr %header, ptr @.str.121)
  %concat_str3 = call ptr @npk_string_concat_simple(ptr %headers_pipe, ptr %concat_str)
  %headers_pipe.ptr = getelementptr inbounds nuw %Request, ptr %out, i32 0, i32 2
  store ptr %concat_str3, ptr %headers_pipe.ptr, align 8
  %out4 = load %Request, ptr %out, align 8
  %result.val = insertvalue { %Request, ptr, i8 } undef, %Request %out4, 0
  %result.err = insertvalue { %Request, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { %Request, ptr, i8 } %result.err, i8 0, 2
  ret { %Request, ptr, i8 } %result.is_error
}

define linkonce_odr { %Request, ptr, i8 } @types.Request_set_body(%Request %req, ptr %body) {
entry:
  %req_alloca = alloca %Request, align 8
  store %Request %req, ptr %req_alloca, align 8
  %out = alloca %Request, align 8
  %req1 = load %Request, ptr %req_alloca, align 8
  store %Request %req1, ptr %out, align 8
  %body.ptr = getelementptr inbounds nuw %Request, ptr %out, i32 0, i32 3
  store ptr %body, ptr %body.ptr, align 8
  %out2 = load %Request, ptr %out, align 8
  %result.val = insertvalue { %Request, ptr, i8 } undef, %Request %out2, 0
  %result.err = insertvalue { %Request, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { %Request, ptr, i8 } %result.err, i8 0, 2
  ret { %Request, ptr, i8 } %result.is_error
}

define linkonce_odr i32 @__types_init() {
entry:
  ret i32 0
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_str.str_char_at(ptr %s, i64 %i) {
entry:
  %i.addr = alloca i64, align 8
  store i64 %i, ptr %i.addr, align 4
  %len = alloca i64, align 8
  %str = load %struct.NpkString, ptr %s, align 8
  %length = extractvalue %struct.NpkString %str, 1
  store i64 %length, ptr %len, align 4
  %i1 = load i64, ptr %i.addr, align 4
  %lttmp = icmp slt i64 %i1, 0
  %ifcond = icmp ne i1 %lttmp, false
  br i1 %ifcond, label %then, label %else

then:                                             ; preds = %entry
  ret { ptr, ptr, i8 } { ptr @.str.123, ptr null, i8 0 }

else:                                             ; preds = %entry
  %i2 = load i64, ptr %i.addr, align 4
  %len3 = load i64, ptr %len, align 4
  %getmp = icmp sge i64 %i2, %len3
  %ifcond4 = icmp ne i1 %getmp, false
  br i1 %ifcond4, label %then5, label %else6

then5:                                            ; preds = %else
  ret { ptr, ptr, i8 } { ptr @.str.125, ptr null, i8 0 }

else6:                                            ; preds = %else
  %end_pos = alloca i64, align 8
  %i7 = load i64, ptr %i.addr, align 4
  %addtmp = add i64 %i7, 1
  store i64 %addtmp, ptr %end_pos, align 4
  %i8 = load i64, ptr %i.addr, align 4
  %end_pos9 = load i64, ptr %end_pos, align 4
  %substr_result = call ptr @npk_string_substring_simple(ptr %s, i64 %i8, i64 %end_pos9)
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %substr_result, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error

ifcont:                                           ; No predecessors!
  br label %ifcont10

ifcont10:                                         ; preds = %ifcont
  ret { ptr, ptr, i8 } zeroinitializer
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_str.str_slice(ptr %s, i64 %start) {
entry:
  %start.addr = alloca i64, align 8
  store i64 %start, ptr %start.addr, align 4
  %len = alloca i64, align 8
  %str = load %struct.NpkString, ptr %s, align 8
  %length = extractvalue %struct.NpkString %str, 1
  store i64 %length, ptr %len, align 4
  %start1 = load i64, ptr %start.addr, align 4
  %len2 = load i64, ptr %len, align 4
  %getmp = icmp sge i64 %start1, %len2
  %ifcond = icmp ne i1 %getmp, false
  br i1 %ifcond, label %then, label %else

then:                                             ; preds = %entry
  ret { ptr, ptr, i8 } { ptr @.str.127, ptr null, i8 0 }

else:                                             ; preds = %entry
  %start3 = load i64, ptr %start.addr, align 4
  %lttmp = icmp slt i64 %start3, 0
  %ifcond4 = icmp ne i1 %lttmp, false
  br i1 %ifcond4, label %then5, label %else6

then5:                                            ; preds = %else
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %s, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error

else6:                                            ; preds = %else
  %start7 = load i64, ptr %start.addr, align 4
  %len8 = load i64, ptr %len, align 4
  %substr_result = call ptr @npk_string_substring_simple(ptr %s, i64 %start7, i64 %len8)
  %result.val9 = insertvalue { ptr, ptr, i8 } undef, ptr %substr_result, 0
  %result.err10 = insertvalue { ptr, ptr, i8 } %result.val9, ptr null, 1
  %result.is_error11 = insertvalue { ptr, ptr, i8 } %result.err10, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error11

ifcont:                                           ; No predecessors!
  br label %ifcont12

ifcont12:                                         ; preds = %ifcont
  ret { ptr, ptr, i8 } zeroinitializer
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_str.str_before(ptr %s, ptr %delim) {
entry:
  %idx = alloca i64, align 8
  %index_of_result = call i64 @npk_string_index_of_simple(ptr %s, ptr %delim)
  store i64 %index_of_result, ptr %idx, align 4
  %idx1 = load i64, ptr %idx, align 4
  %lttmp = icmp slt i64 %idx1, 0
  %ifcond = icmp ne i1 %lttmp, false
  br i1 %ifcond, label %then, label %else

then:                                             ; preds = %entry
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %s, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error

else:                                             ; preds = %entry
  %idx2 = load i64, ptr %idx, align 4
  %substr_result = call ptr @npk_string_substring_simple(ptr %s, i64 0, i64 %idx2)
  %result.val3 = insertvalue { ptr, ptr, i8 } undef, ptr %substr_result, 0
  %result.err4 = insertvalue { ptr, ptr, i8 } %result.val3, ptr null, 1
  %result.is_error5 = insertvalue { ptr, ptr, i8 } %result.err4, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error5

ifcont:                                           ; No predecessors!
  ret { ptr, ptr, i8 } zeroinitializer
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_str.str_after(ptr %s, ptr %delim) {
entry:
  %idx = alloca i64, align 8
  %index_of_result = call i64 @npk_string_index_of_simple(ptr %s, ptr %delim)
  store i64 %index_of_result, ptr %idx, align 4
  %idx1 = load i64, ptr %idx, align 4
  %lttmp = icmp slt i64 %idx1, 0
  %ifcond = icmp ne i1 %lttmp, false
  br i1 %ifcond, label %then, label %else

then:                                             ; preds = %entry
  ret { ptr, ptr, i8 } { ptr @.str.129, ptr null, i8 0 }

else:                                             ; preds = %entry
  %dlen = alloca i64, align 8
  %str = load %struct.NpkString, ptr %delim, align 8
  %length = extractvalue %struct.NpkString %str, 1
  store i64 %length, ptr %dlen, align 4
  %slen = alloca i64, align 8
  %str2 = load %struct.NpkString, ptr %s, align 8
  %length3 = extractvalue %struct.NpkString %str2, 1
  store i64 %length3, ptr %slen, align 4
  %start = alloca i64, align 8
  %idx4 = load i64, ptr %idx, align 4
  %dlen5 = load i64, ptr %dlen, align 4
  %addtmp = add i64 %idx4, %dlen5
  store i64 %addtmp, ptr %start, align 4
  %start6 = load i64, ptr %start, align 4
  %slen7 = load i64, ptr %slen, align 4
  %substr_result = call ptr @npk_string_substring_simple(ptr %s, i64 %start6, i64 %slen7)
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %substr_result, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error

ifcont:                                           ; No predecessors!
  ret { ptr, ptr, i8 } zeroinitializer
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_str.str_before_last(ptr %s, ptr %delim) {
entry:
  %last = alloca i64, align 8
  store i64 -1, ptr %last, align 4
  %dlen = alloca i64, align 8
  %str = load %struct.NpkString, ptr %delim, align 8
  %length = extractvalue %struct.NpkString %str, 1
  store i64 %length, ptr %dlen, align 4
  %slen = alloca i64, align 8
  %str1 = load %struct.NpkString, ptr %s, align 8
  %length2 = extractvalue %struct.NpkString %str1, 1
  store i64 %length2, ptr %slen, align 4
  %pos = alloca i64, align 8
  store i64 0, ptr %pos, align 4
  br label %till.cond

till.cond:                                        ; preds = %till.inc, %entry
  %"$" = phi i64 [ 0, %entry ], [ %"$.next", %till.inc ]
  %"$3" = alloca i64, align 8
  store i64 %"$", ptr %"$3", align 4
  %till.asc = icmp slt i64 %"$", 4096
  %till.desc = icmp sgt i64 %"$", 4096
  %till.cond4 = select i1 false, i1 %till.desc, i1 %till.asc
  br i1 %till.cond4, label %till.body, label %till.end

till.body:                                        ; preds = %till.cond
  %rest_len = alloca i64, align 8
  %slen5 = load i64, ptr %slen, align 4
  %pos6 = load i64, ptr %pos, align 4
  %subtmp = sub i64 %slen5, %pos6
  store i64 %subtmp, ptr %rest_len, align 4
  %rest_len7 = load i64, ptr %rest_len, align 4
  %gttmp = icmp sgt i64 %rest_len7, 0
  %ifcond = icmp ne i1 %gttmp, false
  br i1 %ifcond, label %then, label %else20

then:                                             ; preds = %till.body
  %rest = alloca ptr, align 8
  %pos8 = load i64, ptr %pos, align 4
  %slen9 = load i64, ptr %slen, align 4
  %substr_result = call ptr @npk_string_substring_simple(ptr %s, i64 %pos8, i64 %slen9)
  store ptr %substr_result, ptr %rest, align 8
  %rel = alloca i64, align 8
  %rest10 = load ptr, ptr %rest, align 8
  %index_of_result = call i64 @npk_string_index_of_simple(ptr %rest10, ptr %delim)
  store i64 %index_of_result, ptr %rel, align 4
  %rel11 = load i64, ptr %rel, align 4
  %getmp = icmp sge i64 %rel11, 0
  %ifcond12 = icmp ne i1 %getmp, false
  br i1 %ifcond12, label %then13, label %else

then13:                                           ; preds = %then
  %pos14 = load i64, ptr %pos, align 4
  %rel15 = load i64, ptr %rel, align 4
  %addtmp = add i64 %pos14, %rel15
  store i64 %addtmp, ptr %last, align 4
  %last16 = load i64, ptr %last, align 4
  %dlen17 = load i64, ptr %dlen, align 4
  %addtmp18 = add i64 %last16, %dlen17
  store i64 %addtmp18, ptr %pos, align 4
  br label %ifcont

else:                                             ; preds = %then
  %slen19 = load i64, ptr %slen, align 4
  store i64 %slen19, ptr %pos, align 4
  br label %ifcont

ifcont:                                           ; preds = %else, %then13
  br label %ifcont23

else20:                                           ; preds = %till.body
  %slen21 = load i64, ptr %slen, align 4
  %addtmp22 = add i64 %slen21, 1
  store i64 %addtmp22, ptr %pos, align 4
  br label %ifcont23

ifcont23:                                         ; preds = %else20, %ifcont
  br label %till.inc

till.inc:                                         ; preds = %ifcont23
  %"$24" = load i64, ptr %"$3", align 4
  %"$.next" = add i64 %"$24", 1
  call void @npk_gc_safepoint()
  br label %till.cond

till.end:                                         ; preds = %till.cond
  %last25 = load i64, ptr %last, align 4
  %lttmp = icmp slt i64 %last25, 0
  %ifcond26 = icmp ne i1 %lttmp, false
  br i1 %ifcond26, label %then27, label %else28

then27:                                           ; preds = %till.end
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %s, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error

else28:                                           ; preds = %till.end
  %last29 = load i64, ptr %last, align 4
  %substr_result30 = call ptr @npk_string_substring_simple(ptr %s, i64 0, i64 %last29)
  %result.val31 = insertvalue { ptr, ptr, i8 } undef, ptr %substr_result30, 0
  %result.err32 = insertvalue { ptr, ptr, i8 } %result.val31, ptr null, 1
  %result.is_error33 = insertvalue { ptr, ptr, i8 } %result.err32, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error33

ifcont34:                                         ; No predecessors!
  ret { ptr, ptr, i8 } zeroinitializer
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_str.str_after_last(ptr %s, ptr %delim) {
entry:
  %last = alloca i64, align 8
  store i64 -1, ptr %last, align 4
  %dlen = alloca i64, align 8
  %str = load %struct.NpkString, ptr %delim, align 8
  %length = extractvalue %struct.NpkString %str, 1
  store i64 %length, ptr %dlen, align 4
  %slen = alloca i64, align 8
  %str1 = load %struct.NpkString, ptr %s, align 8
  %length2 = extractvalue %struct.NpkString %str1, 1
  store i64 %length2, ptr %slen, align 4
  %pos = alloca i64, align 8
  store i64 0, ptr %pos, align 4
  br label %till.cond

till.cond:                                        ; preds = %till.inc, %entry
  %"$" = phi i64 [ 0, %entry ], [ %"$.next", %till.inc ]
  %"$3" = alloca i64, align 8
  store i64 %"$", ptr %"$3", align 4
  %till.asc = icmp slt i64 %"$", 4096
  %till.desc = icmp sgt i64 %"$", 4096
  %till.cond4 = select i1 false, i1 %till.desc, i1 %till.asc
  br i1 %till.cond4, label %till.body, label %till.end

till.body:                                        ; preds = %till.cond
  %rest_len = alloca i64, align 8
  %slen5 = load i64, ptr %slen, align 4
  %pos6 = load i64, ptr %pos, align 4
  %subtmp = sub i64 %slen5, %pos6
  store i64 %subtmp, ptr %rest_len, align 4
  %rest_len7 = load i64, ptr %rest_len, align 4
  %gttmp = icmp sgt i64 %rest_len7, 0
  %ifcond = icmp ne i1 %gttmp, false
  br i1 %ifcond, label %then, label %else20

then:                                             ; preds = %till.body
  %rest = alloca ptr, align 8
  %pos8 = load i64, ptr %pos, align 4
  %slen9 = load i64, ptr %slen, align 4
  %substr_result = call ptr @npk_string_substring_simple(ptr %s, i64 %pos8, i64 %slen9)
  store ptr %substr_result, ptr %rest, align 8
  %rel = alloca i64, align 8
  %rest10 = load ptr, ptr %rest, align 8
  %index_of_result = call i64 @npk_string_index_of_simple(ptr %rest10, ptr %delim)
  store i64 %index_of_result, ptr %rel, align 4
  %rel11 = load i64, ptr %rel, align 4
  %getmp = icmp sge i64 %rel11, 0
  %ifcond12 = icmp ne i1 %getmp, false
  br i1 %ifcond12, label %then13, label %else

then13:                                           ; preds = %then
  %pos14 = load i64, ptr %pos, align 4
  %rel15 = load i64, ptr %rel, align 4
  %addtmp = add i64 %pos14, %rel15
  store i64 %addtmp, ptr %last, align 4
  %last16 = load i64, ptr %last, align 4
  %dlen17 = load i64, ptr %dlen, align 4
  %addtmp18 = add i64 %last16, %dlen17
  store i64 %addtmp18, ptr %pos, align 4
  br label %ifcont

else:                                             ; preds = %then
  %slen19 = load i64, ptr %slen, align 4
  store i64 %slen19, ptr %pos, align 4
  br label %ifcont

ifcont:                                           ; preds = %else, %then13
  br label %ifcont23

else20:                                           ; preds = %till.body
  %slen21 = load i64, ptr %slen, align 4
  %addtmp22 = add i64 %slen21, 1
  store i64 %addtmp22, ptr %pos, align 4
  br label %ifcont23

ifcont23:                                         ; preds = %else20, %ifcont
  br label %till.inc

till.inc:                                         ; preds = %ifcont23
  %"$24" = load i64, ptr %"$3", align 4
  %"$.next" = add i64 %"$24", 1
  call void @npk_gc_safepoint()
  br label %till.cond

till.end:                                         ; preds = %till.cond
  %last25 = load i64, ptr %last, align 4
  %lttmp = icmp slt i64 %last25, 0
  %ifcond26 = icmp ne i1 %lttmp, false
  br i1 %ifcond26, label %then27, label %else28

then27:                                           ; preds = %till.end
  ret { ptr, ptr, i8 } { ptr @.str.131, ptr null, i8 0 }

else28:                                           ; preds = %till.end
  %start = alloca i64, align 8
  %last29 = load i64, ptr %last, align 4
  %dlen30 = load i64, ptr %dlen, align 4
  %addtmp31 = add i64 %last29, %dlen30
  store i64 %addtmp31, ptr %start, align 4
  %start32 = load i64, ptr %start, align 4
  %slen33 = load i64, ptr %slen, align 4
  %substr_result34 = call ptr @npk_string_substring_simple(ptr %s, i64 %start32, i64 %slen33)
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %substr_result34, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error

ifcont35:                                         ; No predecessors!
  ret { ptr, ptr, i8 } zeroinitializer
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_str.str_between(ptr %s, ptr %open_, ptr %close_) {
entry:
  %oi = alloca i64, align 8
  %index_of_result = call i64 @npk_string_index_of_simple(ptr %s, ptr %open_)
  store i64 %index_of_result, ptr %oi, align 4
  %oi1 = load i64, ptr %oi, align 4
  %lttmp = icmp slt i64 %oi1, 0
  %ifcond = icmp ne i1 %lttmp, false
  br i1 %ifcond, label %then, label %else

then:                                             ; preds = %entry
  ret { ptr, ptr, i8 } { ptr @.str.133, ptr null, i8 0 }

else:                                             ; preds = %entry
  %olen = alloca i64, align 8
  %str = load %struct.NpkString, ptr %open_, align 8
  %length = extractvalue %struct.NpkString %str, 1
  store i64 %length, ptr %olen, align 4
  %slen = alloca i64, align 8
  %str2 = load %struct.NpkString, ptr %s, align 8
  %length3 = extractvalue %struct.NpkString %str2, 1
  store i64 %length3, ptr %slen, align 4
  %inner_start = alloca i64, align 8
  %oi4 = load i64, ptr %oi, align 4
  %olen5 = load i64, ptr %olen, align 4
  %addtmp = add i64 %oi4, %olen5
  store i64 %addtmp, ptr %inner_start, align 4
  %rest = alloca ptr, align 8
  %inner_start6 = load i64, ptr %inner_start, align 4
  %slen7 = load i64, ptr %slen, align 4
  %substr_result = call ptr @npk_string_substring_simple(ptr %s, i64 %inner_start6, i64 %slen7)
  store ptr %substr_result, ptr %rest, align 8
  %ci = alloca i64, align 8
  %rest8 = load ptr, ptr %rest, align 8
  %index_of_result9 = call i64 @npk_string_index_of_simple(ptr %rest8, ptr %close_)
  store i64 %index_of_result9, ptr %ci, align 4
  %ci10 = load i64, ptr %ci, align 4
  %lttmp11 = icmp slt i64 %ci10, 0
  %ifcond12 = icmp ne i1 %lttmp11, false
  br i1 %ifcond12, label %then13, label %else14

then13:                                           ; preds = %else
  ret { ptr, ptr, i8 } { ptr @.str.135, ptr null, i8 0 }

else14:                                           ; preds = %else
  %rest15 = load ptr, ptr %rest, align 8
  %ci16 = load i64, ptr %ci, align 4
  %substr_result17 = call ptr @npk_string_substring_simple(ptr %rest15, i64 0, i64 %ci16)
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %substr_result17, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error

ifcont:                                           ; No predecessors!
  br label %ifcont18

ifcont18:                                         ; preds = %ifcont
  ret { ptr, ptr, i8 } zeroinitializer
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_str.str_replace(ptr %s, ptr %old_, ptr %new_) {
entry:
  %idx = alloca i64, align 8
  %index_of_result = call i64 @npk_string_index_of_simple(ptr %s, ptr %old_)
  store i64 %index_of_result, ptr %idx, align 4
  %idx1 = load i64, ptr %idx, align 4
  %lttmp = icmp slt i64 %idx1, 0
  %ifcond = icmp ne i1 %lttmp, false
  br i1 %ifcond, label %then, label %else

then:                                             ; preds = %entry
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %s, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error

else:                                             ; preds = %entry
  %olen = alloca i64, align 8
  %str = load %struct.NpkString, ptr %old_, align 8
  %length = extractvalue %struct.NpkString %str, 1
  store i64 %length, ptr %olen, align 4
  %slen = alloca i64, align 8
  %str2 = load %struct.NpkString, ptr %s, align 8
  %length3 = extractvalue %struct.NpkString %str2, 1
  store i64 %length3, ptr %slen, align 4
  %before = alloca ptr, align 8
  %idx4 = load i64, ptr %idx, align 4
  %substr_result = call ptr @npk_string_substring_simple(ptr %s, i64 0, i64 %idx4)
  store ptr %substr_result, ptr %before, align 8
  %after_start = alloca i64, align 8
  %idx5 = load i64, ptr %idx, align 4
  %olen6 = load i64, ptr %olen, align 4
  %addtmp = add i64 %idx5, %olen6
  store i64 %addtmp, ptr %after_start, align 4
  %after = alloca ptr, align 8
  %after_start7 = load i64, ptr %after_start, align 4
  %slen8 = load i64, ptr %slen, align 4
  %substr_result9 = call ptr @npk_string_substring_simple(ptr %s, i64 %after_start7, i64 %slen8)
  store ptr %substr_result9, ptr %after, align 8
  %before10 = load ptr, ptr %before, align 8
  %concat_str = call ptr @npk_string_concat_simple(ptr %before10, ptr %new_)
  %after11 = load ptr, ptr %after, align 8
  %concat_str12 = call ptr @npk_string_concat_simple(ptr %concat_str, ptr %after11)
  %result.val13 = insertvalue { ptr, ptr, i8 } undef, ptr %concat_str12, 0
  %result.err14 = insertvalue { ptr, ptr, i8 } %result.val13, ptr null, 1
  %result.is_error15 = insertvalue { ptr, ptr, i8 } %result.err14, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error15

ifcont:                                           ; No predecessors!
  ret { ptr, ptr, i8 } zeroinitializer
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_str.str_replace_all(ptr %s, ptr %old_, ptr %new_) {
entry:
  %result = alloca ptr, align 8
  store ptr %s, ptr %result, align 8
  %old_len = alloca i64, align 8
  %str = load %struct.NpkString, ptr %old_, align 8
  %length = extractvalue %struct.NpkString %str, 1
  store i64 %length, ptr %old_len, align 4
  br label %till.cond

till.cond:                                        ; preds = %till.inc, %entry
  %"$" = phi i64 [ 0, %entry ], [ %"$.next", %till.inc ]
  %"$1" = alloca i64, align 8
  store i64 %"$", ptr %"$1", align 4
  %till.asc = icmp slt i64 %"$", 256
  %till.desc = icmp sgt i64 %"$", 256
  %till.cond2 = select i1 false, i1 %till.desc, i1 %till.asc
  br i1 %till.cond2, label %till.body, label %till.end

till.body:                                        ; preds = %till.cond
  %idx = alloca i64, align 8
  %result3 = load ptr, ptr %result, align 8
  %index_of_result = call i64 @npk_string_index_of_simple(ptr %result3, ptr %old_)
  store i64 %index_of_result, ptr %idx, align 4
  %idx4 = load i64, ptr %idx, align 4
  %getmp = icmp sge i64 %idx4, 0
  %ifcond = icmp ne i1 %getmp, false
  br i1 %ifcond, label %then, label %else

then:                                             ; preds = %till.body
  %slen = alloca i64, align 8
  %result5 = load ptr, ptr %result, align 8
  %str6 = load %struct.NpkString, ptr %result5, align 8
  %length7 = extractvalue %struct.NpkString %str6, 1
  store i64 %length7, ptr %slen, align 4
  %before = alloca ptr, align 8
  %result8 = load ptr, ptr %result, align 8
  %idx9 = load i64, ptr %idx, align 4
  %substr_result = call ptr @npk_string_substring_simple(ptr %result8, i64 0, i64 %idx9)
  store ptr %substr_result, ptr %before, align 8
  %after_start = alloca i64, align 8
  %idx10 = load i64, ptr %idx, align 4
  %old_len11 = load i64, ptr %old_len, align 4
  %addtmp = add i64 %idx10, %old_len11
  store i64 %addtmp, ptr %after_start, align 4
  %after = alloca ptr, align 8
  %result12 = load ptr, ptr %result, align 8
  %after_start13 = load i64, ptr %after_start, align 4
  %slen14 = load i64, ptr %slen, align 4
  %substr_result15 = call ptr @npk_string_substring_simple(ptr %result12, i64 %after_start13, i64 %slen14)
  store ptr %substr_result15, ptr %after, align 8
  %before16 = load ptr, ptr %before, align 8
  %concat_str = call ptr @npk_string_concat_simple(ptr %before16, ptr %new_)
  %after17 = load ptr, ptr %after, align 8
  %concat_str18 = call ptr @npk_string_concat_simple(ptr %concat_str, ptr %after17)
  store ptr %concat_str18, ptr %result, align 8
  br label %ifcont

else:                                             ; preds = %till.body
  br label %ifcont

ifcont:                                           ; preds = %else, %then
  br label %till.inc

till.inc:                                         ; preds = %ifcont
  %"$19" = load i64, ptr %"$1", align 4
  %"$.next" = add i64 %"$19", 1
  call void @npk_gc_safepoint()
  br label %till.cond

till.end:                                         ; preds = %till.cond
  %result20 = load ptr, ptr %result, align 8
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %result20, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_str.str_remove_prefix(ptr %s, ptr %prefix) {
entry:
  %str = load %struct.NpkString, ptr %s, align 8
  %prefix1 = load %struct.NpkString, ptr %prefix, align 8
  %starts_with = call i1 @npk_string_starts_with(%struct.NpkString %str, %struct.NpkString %prefix1)
  %ifcond = icmp ne i1 %starts_with, false
  br i1 %ifcond, label %then, label %else

then:                                             ; preds = %entry
  %plen = alloca i64, align 8
  %str2 = load %struct.NpkString, ptr %prefix, align 8
  %length = extractvalue %struct.NpkString %str2, 1
  store i64 %length, ptr %plen, align 4
  %slen = alloca i64, align 8
  %str3 = load %struct.NpkString, ptr %s, align 8
  %length4 = extractvalue %struct.NpkString %str3, 1
  store i64 %length4, ptr %slen, align 4
  %plen5 = load i64, ptr %plen, align 4
  %slen6 = load i64, ptr %slen, align 4
  %substr_result = call ptr @npk_string_substring_simple(ptr %s, i64 %plen5, i64 %slen6)
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %substr_result, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error

else:                                             ; preds = %entry
  %result.val7 = insertvalue { ptr, ptr, i8 } undef, ptr %s, 0
  %result.err8 = insertvalue { ptr, ptr, i8 } %result.val7, ptr null, 1
  %result.is_error9 = insertvalue { ptr, ptr, i8 } %result.err8, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error9

ifcont:                                           ; No predecessors!
  ret { ptr, ptr, i8 } zeroinitializer
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_str.str_remove_suffix(ptr %s, ptr %suffix) {
entry:
  %str = load %struct.NpkString, ptr %s, align 8
  %suffix1 = load %struct.NpkString, ptr %suffix, align 8
  %ends_with = call i1 @npk_string_ends_with(%struct.NpkString %str, %struct.NpkString %suffix1)
  %ifcond = icmp ne i1 %ends_with, false
  br i1 %ifcond, label %then, label %else

then:                                             ; preds = %entry
  %slen = alloca i64, align 8
  %str2 = load %struct.NpkString, ptr %s, align 8
  %length = extractvalue %struct.NpkString %str2, 1
  store i64 %length, ptr %slen, align 4
  %sufflen = alloca i64, align 8
  %str3 = load %struct.NpkString, ptr %suffix, align 8
  %length4 = extractvalue %struct.NpkString %str3, 1
  store i64 %length4, ptr %sufflen, align 4
  %end_pos = alloca i64, align 8
  %slen5 = load i64, ptr %slen, align 4
  %sufflen6 = load i64, ptr %sufflen, align 4
  %subtmp = sub i64 %slen5, %sufflen6
  store i64 %subtmp, ptr %end_pos, align 4
  %end_pos7 = load i64, ptr %end_pos, align 4
  %substr_result = call ptr @npk_string_substring_simple(ptr %s, i64 0, i64 %end_pos7)
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %substr_result, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error

else:                                             ; preds = %entry
  %result.val8 = insertvalue { ptr, ptr, i8 } undef, ptr %s, 0
  %result.err9 = insertvalue { ptr, ptr, i8 } %result.val8, ptr null, 1
  %result.is_error10 = insertvalue { ptr, ptr, i8 } %result.err9, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error10

ifcont:                                           ; No predecessors!
  ret { ptr, ptr, i8 } zeroinitializer
}

define linkonce_odr { i64, ptr, i8 } @nitpick_str.str_count(ptr %s, ptr %sub) {
entry:
  %count = alloca i64, align 8
  store i64 0, ptr %count, align 4
  %sublen = alloca i64, align 8
  %str = load %struct.NpkString, ptr %sub, align 8
  %length = extractvalue %struct.NpkString %str, 1
  store i64 %length, ptr %sublen, align 4
  %sublen1 = load i64, ptr %sublen, align 4
  %letmp = icmp sle i64 %sublen1, 0
  %ifcond = icmp ne i1 %letmp, false
  br i1 %ifcond, label %then, label %else

then:                                             ; preds = %entry
  ret { i64, ptr, i8 } zeroinitializer

else:                                             ; preds = %entry
  %slen = alloca i64, align 8
  %str2 = load %struct.NpkString, ptr %s, align 8
  %length3 = extractvalue %struct.NpkString %str2, 1
  store i64 %length3, ptr %slen, align 4
  %pos = alloca i64, align 8
  store i64 0, ptr %pos, align 4
  br label %till.cond

till.cond:                                        ; preds = %till.inc, %else
  %"$" = phi i64 [ 0, %else ], [ %"$.next", %till.inc ]
  %"$4" = alloca i64, align 8
  store i64 %"$", ptr %"$4", align 4
  %till.asc = icmp slt i64 %"$", 4096
  %till.desc = icmp sgt i64 %"$", 4096
  %till.cond5 = select i1 false, i1 %till.desc, i1 %till.asc
  br i1 %till.cond5, label %till.body, label %till.end

till.body:                                        ; preds = %till.cond
  %rest_len = alloca i64, align 8
  %slen6 = load i64, ptr %slen, align 4
  %pos7 = load i64, ptr %pos, align 4
  %subtmp = sub i64 %slen6, %pos7
  store i64 %subtmp, ptr %rest_len, align 4
  %rest_len8 = load i64, ptr %rest_len, align 4
  %sublen9 = load i64, ptr %sublen, align 4
  %getmp = icmp sge i64 %rest_len8, %sublen9
  %ifcond10 = icmp ne i1 %getmp, false
  br i1 %ifcond10, label %then11, label %else27

then11:                                           ; preds = %till.body
  %rest = alloca ptr, align 8
  %pos12 = load i64, ptr %pos, align 4
  %slen13 = load i64, ptr %slen, align 4
  %substr_result = call ptr @npk_string_substring_simple(ptr %s, i64 %pos12, i64 %slen13)
  store ptr %substr_result, ptr %rest, align 8
  %rel = alloca i64, align 8
  %rest14 = load ptr, ptr %rest, align 8
  %index_of_result = call i64 @npk_string_index_of_simple(ptr %rest14, ptr %sub)
  store i64 %index_of_result, ptr %rel, align 4
  %rel15 = load i64, ptr %rel, align 4
  %getmp16 = icmp sge i64 %rel15, 0
  %ifcond17 = icmp ne i1 %getmp16, false
  br i1 %ifcond17, label %then18, label %else25

then18:                                           ; preds = %then11
  %count19 = load i64, ptr %count, align 4
  %addtmp = add i64 %count19, 1
  store i64 %addtmp, ptr %count, align 4
  %pos20 = load i64, ptr %pos, align 4
  %rel21 = load i64, ptr %rel, align 4
  %addtmp22 = add i64 %pos20, %rel21
  %sublen23 = load i64, ptr %sublen, align 4
  %addtmp24 = add i64 %addtmp22, %sublen23
  store i64 %addtmp24, ptr %pos, align 4
  br label %ifcont

else25:                                           ; preds = %then11
  %slen26 = load i64, ptr %slen, align 4
  store i64 %slen26, ptr %pos, align 4
  br label %ifcont

ifcont:                                           ; preds = %else25, %then18
  br label %ifcont30

else27:                                           ; preds = %till.body
  %slen28 = load i64, ptr %slen, align 4
  %addtmp29 = add i64 %slen28, 1
  store i64 %addtmp29, ptr %pos, align 4
  br label %ifcont30

ifcont30:                                         ; preds = %else27, %ifcont
  br label %till.inc

till.inc:                                         ; preds = %ifcont30
  %"$31" = load i64, ptr %"$4", align 4
  %"$.next" = add i64 %"$31", 1
  call void @npk_gc_safepoint()
  br label %till.cond

till.end:                                         ; preds = %till.cond
  %count32 = load i64, ptr %count, align 4
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %count32, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error

ifcont33:                                         ; No predecessors!
  ret { i64, ptr, i8 } zeroinitializer
}

define linkonce_odr { i64, ptr, i8 } @nitpick_str.str_line_count(ptr %s) {
entry:
  %str = load %struct.NpkString, ptr %s, align 8
  %length = extractvalue %struct.NpkString %str, 1
  %is_empty = icmp eq i64 %length, 0
  %ifcond = icmp ne i1 %is_empty, false
  br i1 %ifcond, label %then, label %else

then:                                             ; preds = %entry
  ret { i64, ptr, i8 } { i64 1, ptr null, i8 0 }

else:                                             ; preds = %entry
  %n = alloca i64, align 8
  %calltmp = call { i64, ptr, i8 } @nitpick_str.str_count(ptr %s, ptr @.str.137)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %n, align 4
  %n1 = load i64, ptr %n, align 4
  %addtmp = add i64 %n1, 1
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %addtmp, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error

ifcont:                                           ; No predecessors!
  ret { i64, ptr, i8 } zeroinitializer
}

define linkonce_odr { i1, ptr, i8 } @nitpick_str.str_is_blank(ptr %s) {
entry:
  %trimmed = alloca ptr, align 8
  %trim_result = call ptr @npk_string_trim_simple(ptr %s)
  store ptr %trim_result, ptr %trimmed, align 8
  %trimmed1 = load ptr, ptr %trimmed, align 8
  %str = load %struct.NpkString, ptr %trimmed1, align 8
  %length = extractvalue %struct.NpkString %str, 1
  %is_empty = icmp eq i64 %length, 0
  %result.val = insertvalue { i1, ptr, i8 } undef, i1 %is_empty, 0
  %result.err = insertvalue { i1, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i1, ptr, i8 } %result.err, i8 0, 2
  ret { i1, ptr, i8 } %result.is_error
}

define linkonce_odr { i64, ptr, i8 } @nitpick_str.str_token_count(ptr %s, ptr %delim) {
entry:
  %str = load %struct.NpkString, ptr %s, align 8
  %length = extractvalue %struct.NpkString %str, 1
  %is_empty = icmp eq i64 %length, 0
  %ifcond = icmp ne i1 %is_empty, false
  br i1 %ifcond, label %then, label %else

then:                                             ; preds = %entry
  ret { i64, ptr, i8 } zeroinitializer

else:                                             ; preds = %entry
  %n = alloca i64, align 8
  %calltmp = call { i64, ptr, i8 } @nitpick_str.str_count(ptr %s, ptr %delim)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %n, align 4
  %n1 = load i64, ptr %n, align 4
  %addtmp = add i64 %n1, 1
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %addtmp, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error

ifcont:                                           ; No predecessors!
  ret { i64, ptr, i8 } zeroinitializer
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_str.str_token(ptr %s, ptr %delim, i64 %n) {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 4
  %rest = alloca ptr, align 8
  store ptr %s, ptr %rest, align 8
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  %found = alloca i64, align 8
  store i64 0, ptr %found, align 4
  %result = alloca ptr, align 8
  store ptr @.str.139, ptr %result, align 8
  br label %till.cond

till.cond:                                        ; preds = %till.inc, %entry
  %"$" = phi i64 [ 0, %entry ], [ %"$.next", %till.inc ]
  %"$1" = alloca i64, align 8
  store i64 %"$", ptr %"$1", align 4
  %till.asc = icmp slt i64 %"$", 4096
  %till.desc = icmp sgt i64 %"$", 4096
  %till.cond2 = select i1 false, i1 %till.desc, i1 %till.asc
  br i1 %till.cond2, label %till.body, label %till.end

till.body:                                        ; preds = %till.cond
  %found3 = load i64, ptr %found, align 4
  %eqtmp = icmp eq i64 %found3, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %else26

then:                                             ; preds = %till.body
  %i4 = load i64, ptr %i, align 4
  %n5 = load i64, ptr %n.addr, align 4
  %eqtmp6 = icmp eq i64 %i4, %n5
  %ifcond7 = icmp ne i1 %eqtmp6, false
  br i1 %ifcond7, label %then8, label %else

then8:                                            ; preds = %then
  %rest9 = load ptr, ptr %rest, align 8
  %calltmp = call { ptr, ptr, i8 } @nitpick_str.str_before(ptr %rest9, ptr %delim)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  store ptr %raw.value, ptr %result, align 8
  store i64 1, ptr %found, align 4
  br label %ifcont25

else:                                             ; preds = %then
  %idx = alloca i64, align 8
  %rest10 = load ptr, ptr %rest, align 8
  %index_of_result = call i64 @npk_string_index_of_simple(ptr %rest10, ptr %delim)
  store i64 %index_of_result, ptr %idx, align 4
  %idx11 = load i64, ptr %idx, align 4
  %lttmp = icmp slt i64 %idx11, 0
  %ifcond12 = icmp ne i1 %lttmp, false
  br i1 %ifcond12, label %then13, label %else14

then13:                                           ; preds = %else
  store i64 2, ptr %found, align 4
  br label %ifcont

else14:                                           ; preds = %else
  %dlen = alloca i64, align 8
  %str = load %struct.NpkString, ptr %delim, align 8
  %length = extractvalue %struct.NpkString %str, 1
  store i64 %length, ptr %dlen, align 4
  %rlen = alloca i64, align 8
  %rest15 = load ptr, ptr %rest, align 8
  %str16 = load %struct.NpkString, ptr %rest15, align 8
  %length17 = extractvalue %struct.NpkString %str16, 1
  store i64 %length17, ptr %rlen, align 4
  %next_start = alloca i64, align 8
  %idx18 = load i64, ptr %idx, align 4
  %dlen19 = load i64, ptr %dlen, align 4
  %addtmp = add i64 %idx18, %dlen19
  store i64 %addtmp, ptr %next_start, align 4
  %rest20 = load ptr, ptr %rest, align 8
  %next_start21 = load i64, ptr %next_start, align 4
  %rlen22 = load i64, ptr %rlen, align 4
  %substr_result = call ptr @npk_string_substring_simple(ptr %rest20, i64 %next_start21, i64 %rlen22)
  store ptr %substr_result, ptr %rest, align 8
  %i23 = load i64, ptr %i, align 4
  %addtmp24 = add i64 %i23, 1
  store i64 %addtmp24, ptr %i, align 4
  br label %ifcont

ifcont:                                           ; preds = %else14, %then13
  br label %ifcont25

ifcont25:                                         ; preds = %ifcont, %then8
  br label %ifcont27

else26:                                           ; preds = %till.body
  br label %ifcont27

ifcont27:                                         ; preds = %else26, %ifcont25
  br label %till.inc

till.inc:                                         ; preds = %ifcont27
  %"$28" = load i64, ptr %"$1", align 4
  %"$.next" = add i64 %"$28", 1
  call void @npk_gc_safepoint()
  br label %till.cond

till.end:                                         ; preds = %till.cond
  %found29 = load i64, ptr %found, align 4
  %eqtmp30 = icmp eq i64 %found29, 2
  %ifcond31 = icmp ne i1 %eqtmp30, false
  br i1 %ifcond31, label %then32, label %else33

then32:                                           ; preds = %till.end
  ret { ptr, ptr, i8 } { ptr @.str.141, ptr null, i8 0 }

else33:                                           ; preds = %till.end
  %result34 = load ptr, ptr %result, align 8
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %result34, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error

ifcont35:                                         ; No predecessors!
  ret { ptr, ptr, i8 } zeroinitializer
}

declare i1 @npk_string_starts_with(%struct.NpkString, %struct.NpkString)

declare i1 @npk_string_ends_with(%struct.NpkString, %struct.NpkString)

declare ptr @npk_string_trim_simple(ptr)

define linkonce_odr { ptr, ptr, i8 } @nitpick_str.Str_char_at(ptr %s, i64 %i) {
entry:
  %i.addr = alloca i64, align 8
  store i64 %i, ptr %i.addr, align 4
  %i1 = load i64, ptr %i.addr, align 4
  %calltmp = call { ptr, ptr, i8 } @nitpick_str.str_char_at(ptr %s, i64 %i1)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %raw.value, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_str.Str_slice(ptr %s, i64 %start) {
entry:
  %start.addr = alloca i64, align 8
  store i64 %start, ptr %start.addr, align 4
  %start1 = load i64, ptr %start.addr, align 4
  %calltmp = call { ptr, ptr, i8 } @nitpick_str.str_slice(ptr %s, i64 %start1)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %raw.value, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_str.Str_before(ptr %s, ptr %delim) {
entry:
  %calltmp = call { ptr, ptr, i8 } @nitpick_str.str_before(ptr %s, ptr %delim)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %raw.value, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_str.Str_after(ptr %s, ptr %delim) {
entry:
  %calltmp = call { ptr, ptr, i8 } @nitpick_str.str_after(ptr %s, ptr %delim)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %raw.value, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_str.Str_before_last(ptr %s, ptr %delim) {
entry:
  %calltmp = call { ptr, ptr, i8 } @nitpick_str.str_before_last(ptr %s, ptr %delim)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %raw.value, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_str.Str_after_last(ptr %s, ptr %delim) {
entry:
  %calltmp = call { ptr, ptr, i8 } @nitpick_str.str_after_last(ptr %s, ptr %delim)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %raw.value, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_str.Str_between(ptr %s, ptr %open_, ptr %close_) {
entry:
  %calltmp = call { ptr, ptr, i8 } @nitpick_str.str_between(ptr %s, ptr %open_, ptr %close_)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %raw.value, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_str.Str_replace(ptr %s, ptr %old_, ptr %new_) {
entry:
  %calltmp = call { ptr, ptr, i8 } @nitpick_str.str_replace(ptr %s, ptr %old_, ptr %new_)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %raw.value, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_str.Str_replace_all(ptr %s, ptr %old_, ptr %new_) {
entry:
  %calltmp = call { ptr, ptr, i8 } @nitpick_str.str_replace_all(ptr %s, ptr %old_, ptr %new_)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %raw.value, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_str.Str_remove_prefix(ptr %s, ptr %prefix) {
entry:
  %calltmp = call { ptr, ptr, i8 } @nitpick_str.str_remove_prefix(ptr %s, ptr %prefix)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %raw.value, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_str.Str_remove_suffix(ptr %s, ptr %suffix) {
entry:
  %calltmp = call { ptr, ptr, i8 } @nitpick_str.str_remove_suffix(ptr %s, ptr %suffix)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %raw.value, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { i64, ptr, i8 } @nitpick_str.Str_count(ptr %s, ptr %sub) {
entry:
  %calltmp = call { i64, ptr, i8 } @nitpick_str.str_count(ptr %s, ptr %sub)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %raw.value, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i64, ptr, i8 } @nitpick_str.Str_line_count(ptr %s) {
entry:
  %calltmp = call { i64, ptr, i8 } @nitpick_str.str_line_count(ptr %s)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %raw.value, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i1, ptr, i8 } @nitpick_str.Str_is_blank(ptr %s) {
entry:
  %calltmp = call { i1, ptr, i8 } @nitpick_str.str_is_blank(ptr %s)
  %raw.value = extractvalue { i1, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { i1, ptr, i8 } undef, i1 %raw.value, 0
  %result.err = insertvalue { i1, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i1, ptr, i8 } %result.err, i8 0, 2
  ret { i1, ptr, i8 } %result.is_error
}

define linkonce_odr { i64, ptr, i8 } @nitpick_str.Str_token_count(ptr %s, ptr %delim) {
entry:
  %calltmp = call { i64, ptr, i8 } @nitpick_str.str_token_count(ptr %s, ptr %delim)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %raw.value, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_str.Str_token(ptr %s, ptr %delim, i64 %n) {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 4
  %n1 = load i64, ptr %n.addr, align 4
  %calltmp = call { ptr, ptr, i8 } @nitpick_str.str_token(ptr %s, ptr %delim, i64 %n1)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %raw.value, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr i32 @__nitpick_str_init() {
entry:
  ret i32 0
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_fs.fs_error() {
entry:
  %calltmp = call ptr @nitpick_fs_error()
  %ffi_strlen = call i64 @strlen(ptr %calltmp)
  %ffi_str_gc = call ptr @npk_gc_alloc(i64 16)
  %ffi_data_sz = add i64 %ffi_strlen, 1
  %ffi_data_gc = call ptr @npk_gc_alloc(i64 %ffi_data_sz)
  %0 = call ptr @memcpy(ptr %ffi_data_gc, ptr %calltmp, i64 %ffi_data_sz)
  %ffi_str_data = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc, i32 0, i32 0
  store ptr %ffi_data_gc, ptr %ffi_str_data, align 8
  %ffi_str_len = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc, i32 0, i32 1
  store i64 %ffi_strlen, ptr %ffi_str_len, align 4
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %ffi_str_gc, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_fs.fs_read_file(ptr %path) {
entry:
  %calltmp = call ptr @nitpick_fs_read_file(ptr %path)
  %ffi_strlen = call i64 @strlen(ptr %calltmp)
  %ffi_str_gc = call ptr @npk_gc_alloc(i64 16)
  %ffi_data_sz = add i64 %ffi_strlen, 1
  %ffi_data_gc = call ptr @npk_gc_alloc(i64 %ffi_data_sz)
  %0 = call ptr @memcpy(ptr %ffi_data_gc, ptr %calltmp, i64 %ffi_data_sz)
  %ffi_str_data = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc, i32 0, i32 0
  store ptr %ffi_data_gc, ptr %ffi_str_data, align 8
  %ffi_str_len = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc, i32 0, i32 1
  store i64 %ffi_strlen, ptr %ffi_str_len, align 4
  %calltmp1 = call ptr @nitpick_fs_last_result()
  %ffi_strlen2 = call i64 @strlen(ptr %calltmp1)
  %ffi_str_gc3 = call ptr @npk_gc_alloc(i64 16)
  %ffi_data_sz4 = add i64 %ffi_strlen2, 1
  %ffi_data_gc5 = call ptr @npk_gc_alloc(i64 %ffi_data_sz4)
  %1 = call ptr @memcpy(ptr %ffi_data_gc5, ptr %calltmp1, i64 %ffi_data_sz4)
  %ffi_str_data6 = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc3, i32 0, i32 0
  store ptr %ffi_data_gc5, ptr %ffi_str_data6, align 8
  %ffi_str_len7 = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc3, i32 0, i32 1
  store i64 %ffi_strlen2, ptr %ffi_str_len7, align 4
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %ffi_str_gc3, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { i64, ptr, i8 } @nitpick_fs.fs_read_length() {
entry:
  %calltmp = call i64 @nitpick_fs_read_length()
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %calltmp, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i32, ptr, i8 } @nitpick_fs.fs_write_file(ptr %path, ptr %data) {
entry:
  %calltmp = call i32 @nitpick_fs_write_file(ptr %path, ptr %data)
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %calltmp, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error
}

define linkonce_odr { i32, ptr, i8 } @nitpick_fs.fs_append_file(ptr %path, ptr %data) {
entry:
  %calltmp = call i32 @nitpick_fs_append_file(ptr %path, ptr %data)
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %calltmp, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error
}

define linkonce_odr { i32, ptr, i8 } @nitpick_fs.fs_exists(ptr %path) {
entry:
  %calltmp = call i32 @nitpick_fs_exists(ptr %path)
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %calltmp, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error
}

define linkonce_odr { i32, ptr, i8 } @nitpick_fs.fs_is_file(ptr %path) {
entry:
  %calltmp = call i32 @nitpick_fs_is_file(ptr %path)
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %calltmp, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error
}

define linkonce_odr { i32, ptr, i8 } @nitpick_fs.fs_is_dir(ptr %path) {
entry:
  %calltmp = call i32 @nitpick_fs_is_dir(ptr %path)
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %calltmp, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error
}

define linkonce_odr { i64, ptr, i8 } @nitpick_fs.fs_file_size(ptr %path) {
entry:
  %calltmp = call i64 @nitpick_fs_file_size(ptr %path)
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %calltmp, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i64, ptr, i8 } @nitpick_fs.fs_modified_time(ptr %path) {
entry:
  %calltmp = call i64 @nitpick_fs_modified_time(ptr %path)
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %calltmp, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i32, ptr, i8 } @nitpick_fs.fs_mkdir(ptr %path) {
entry:
  %calltmp = call i32 @nitpick_fs_mkdir(ptr %path)
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %calltmp, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error
}

define linkonce_odr { i32, ptr, i8 } @nitpick_fs.fs_rmdir(ptr %path) {
entry:
  %calltmp = call i32 @nitpick_fs_rmdir(ptr %path)
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %calltmp, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_fs.fs_list_dir(ptr %path) {
entry:
  %calltmp = call ptr @nitpick_fs_list_dir(ptr %path)
  %ffi_strlen = call i64 @strlen(ptr %calltmp)
  %ffi_str_gc = call ptr @npk_gc_alloc(i64 16)
  %ffi_data_sz = add i64 %ffi_strlen, 1
  %ffi_data_gc = call ptr @npk_gc_alloc(i64 %ffi_data_sz)
  %0 = call ptr @memcpy(ptr %ffi_data_gc, ptr %calltmp, i64 %ffi_data_sz)
  %ffi_str_data = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc, i32 0, i32 0
  store ptr %ffi_data_gc, ptr %ffi_str_data, align 8
  %ffi_str_len = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc, i32 0, i32 1
  store i64 %ffi_strlen, ptr %ffi_str_len, align 4
  %calltmp1 = call ptr @nitpick_fs_last_result()
  %ffi_strlen2 = call i64 @strlen(ptr %calltmp1)
  %ffi_str_gc3 = call ptr @npk_gc_alloc(i64 16)
  %ffi_data_sz4 = add i64 %ffi_strlen2, 1
  %ffi_data_gc5 = call ptr @npk_gc_alloc(i64 %ffi_data_sz4)
  %1 = call ptr @memcpy(ptr %ffi_data_gc5, ptr %calltmp1, i64 %ffi_data_sz4)
  %ffi_str_data6 = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc3, i32 0, i32 0
  store ptr %ffi_data_gc5, ptr %ffi_str_data6, align 8
  %ffi_str_len7 = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc3, i32 0, i32 1
  store i64 %ffi_strlen2, ptr %ffi_str_len7, align 4
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %ffi_str_gc3, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { i32, ptr, i8 } @nitpick_fs.fs_remove(ptr %path) {
entry:
  %calltmp = call i32 @nitpick_fs_remove(ptr %path)
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %calltmp, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error
}

define linkonce_odr { i32, ptr, i8 } @nitpick_fs.fs_rename(ptr %o, ptr %n) {
entry:
  %calltmp = call i32 @nitpick_fs_rename(ptr %o, ptr %n)
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %calltmp, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error
}

define linkonce_odr { i32, ptr, i8 } @nitpick_fs.fs_copy(ptr %s, ptr %d) {
entry:
  %calltmp = call i32 @nitpick_fs_copy(ptr %s, ptr %d)
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %calltmp, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_fs.fs_get_cwd() {
entry:
  %calltmp = call ptr @nitpick_fs_get_cwd()
  %ffi_strlen = call i64 @strlen(ptr %calltmp)
  %ffi_str_gc = call ptr @npk_gc_alloc(i64 16)
  %ffi_data_sz = add i64 %ffi_strlen, 1
  %ffi_data_gc = call ptr @npk_gc_alloc(i64 %ffi_data_sz)
  %0 = call ptr @memcpy(ptr %ffi_data_gc, ptr %calltmp, i64 %ffi_data_sz)
  %ffi_str_data = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc, i32 0, i32 0
  store ptr %ffi_data_gc, ptr %ffi_str_data, align 8
  %ffi_str_len = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc, i32 0, i32 1
  store i64 %ffi_strlen, ptr %ffi_str_len, align 4
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %ffi_str_gc, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_fs.fs_absolute(ptr %path) {
entry:
  %calltmp = call ptr @nitpick_fs_absolute(ptr %path)
  %ffi_strlen = call i64 @strlen(ptr %calltmp)
  %ffi_str_gc = call ptr @npk_gc_alloc(i64 16)
  %ffi_data_sz = add i64 %ffi_strlen, 1
  %ffi_data_gc = call ptr @npk_gc_alloc(i64 %ffi_data_sz)
  %0 = call ptr @memcpy(ptr %ffi_data_gc, ptr %calltmp, i64 %ffi_data_sz)
  %ffi_str_data = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc, i32 0, i32 0
  store ptr %ffi_data_gc, ptr %ffi_str_data, align 8
  %ffi_str_len = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc, i32 0, i32 1
  store i64 %ffi_strlen, ptr %ffi_str_len, align 4
  %calltmp1 = call ptr @nitpick_fs_last_result()
  %ffi_strlen2 = call i64 @strlen(ptr %calltmp1)
  %ffi_str_gc3 = call ptr @npk_gc_alloc(i64 16)
  %ffi_data_sz4 = add i64 %ffi_strlen2, 1
  %ffi_data_gc5 = call ptr @npk_gc_alloc(i64 %ffi_data_sz4)
  %1 = call ptr @memcpy(ptr %ffi_data_gc5, ptr %calltmp1, i64 %ffi_data_sz4)
  %ffi_str_data6 = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc3, i32 0, i32 0
  store ptr %ffi_data_gc5, ptr %ffi_str_data6, align 8
  %ffi_str_len7 = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc3, i32 0, i32 1
  store i64 %ffi_strlen2, ptr %ffi_str_len7, align 4
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %ffi_str_gc3, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_fs.fs_extension(ptr %path) {
entry:
  %calltmp = call ptr @nitpick_fs_extension(ptr %path)
  %ffi_strlen = call i64 @strlen(ptr %calltmp)
  %ffi_str_gc = call ptr @npk_gc_alloc(i64 16)
  %ffi_data_sz = add i64 %ffi_strlen, 1
  %ffi_data_gc = call ptr @npk_gc_alloc(i64 %ffi_data_sz)
  %0 = call ptr @memcpy(ptr %ffi_data_gc, ptr %calltmp, i64 %ffi_data_sz)
  %ffi_str_data = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc, i32 0, i32 0
  store ptr %ffi_data_gc, ptr %ffi_str_data, align 8
  %ffi_str_len = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc, i32 0, i32 1
  store i64 %ffi_strlen, ptr %ffi_str_len, align 4
  %calltmp1 = call ptr @nitpick_fs_last_result()
  %ffi_strlen2 = call i64 @strlen(ptr %calltmp1)
  %ffi_str_gc3 = call ptr @npk_gc_alloc(i64 16)
  %ffi_data_sz4 = add i64 %ffi_strlen2, 1
  %ffi_data_gc5 = call ptr @npk_gc_alloc(i64 %ffi_data_sz4)
  %1 = call ptr @memcpy(ptr %ffi_data_gc5, ptr %calltmp1, i64 %ffi_data_sz4)
  %ffi_str_data6 = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc3, i32 0, i32 0
  store ptr %ffi_data_gc5, ptr %ffi_str_data6, align 8
  %ffi_str_len7 = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc3, i32 0, i32 1
  store i64 %ffi_strlen2, ptr %ffi_str_len7, align 4
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %ffi_str_gc3, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_fs.fs_basename(ptr %path) {
entry:
  %calltmp = call ptr @nitpick_fs_basename(ptr %path)
  %ffi_strlen = call i64 @strlen(ptr %calltmp)
  %ffi_str_gc = call ptr @npk_gc_alloc(i64 16)
  %ffi_data_sz = add i64 %ffi_strlen, 1
  %ffi_data_gc = call ptr @npk_gc_alloc(i64 %ffi_data_sz)
  %0 = call ptr @memcpy(ptr %ffi_data_gc, ptr %calltmp, i64 %ffi_data_sz)
  %ffi_str_data = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc, i32 0, i32 0
  store ptr %ffi_data_gc, ptr %ffi_str_data, align 8
  %ffi_str_len = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc, i32 0, i32 1
  store i64 %ffi_strlen, ptr %ffi_str_len, align 4
  %calltmp1 = call ptr @nitpick_fs_last_result()
  %ffi_strlen2 = call i64 @strlen(ptr %calltmp1)
  %ffi_str_gc3 = call ptr @npk_gc_alloc(i64 16)
  %ffi_data_sz4 = add i64 %ffi_strlen2, 1
  %ffi_data_gc5 = call ptr @npk_gc_alloc(i64 %ffi_data_sz4)
  %1 = call ptr @memcpy(ptr %ffi_data_gc5, ptr %calltmp1, i64 %ffi_data_sz4)
  %ffi_str_data6 = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc3, i32 0, i32 0
  store ptr %ffi_data_gc5, ptr %ffi_str_data6, align 8
  %ffi_str_len7 = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc3, i32 0, i32 1
  store i64 %ffi_strlen2, ptr %ffi_str_len7, align 4
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %ffi_str_gc3, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_fs.fs_dirname(ptr %path) {
entry:
  %calltmp = call ptr @nitpick_fs_dirname(ptr %path)
  %ffi_strlen = call i64 @strlen(ptr %calltmp)
  %ffi_str_gc = call ptr @npk_gc_alloc(i64 16)
  %ffi_data_sz = add i64 %ffi_strlen, 1
  %ffi_data_gc = call ptr @npk_gc_alloc(i64 %ffi_data_sz)
  %0 = call ptr @memcpy(ptr %ffi_data_gc, ptr %calltmp, i64 %ffi_data_sz)
  %ffi_str_data = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc, i32 0, i32 0
  store ptr %ffi_data_gc, ptr %ffi_str_data, align 8
  %ffi_str_len = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc, i32 0, i32 1
  store i64 %ffi_strlen, ptr %ffi_str_len, align 4
  %calltmp1 = call ptr @nitpick_fs_last_result()
  %ffi_strlen2 = call i64 @strlen(ptr %calltmp1)
  %ffi_str_gc3 = call ptr @npk_gc_alloc(i64 16)
  %ffi_data_sz4 = add i64 %ffi_strlen2, 1
  %ffi_data_gc5 = call ptr @npk_gc_alloc(i64 %ffi_data_sz4)
  %1 = call ptr @memcpy(ptr %ffi_data_gc5, ptr %calltmp1, i64 %ffi_data_sz4)
  %ffi_str_data6 = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc3, i32 0, i32 0
  store ptr %ffi_data_gc5, ptr %ffi_str_data6, align 8
  %ffi_str_len7 = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc3, i32 0, i32 1
  store i64 %ffi_strlen2, ptr %ffi_str_len7, align 4
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %ffi_str_gc3, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { %struct.NIL, ptr, i8 } @nitpick_fs.fs_cleanup() {
entry:
  %calltmp = call ptr @nitpick_fs_cleanup()
  ret { %struct.NIL, ptr, i8 } zeroinitializer
}

define linkonce_odr { i32, ptr, i8 } @nitpick_fs.fs_rmdir_recursive(ptr %path) {
entry:
  %is_f = alloca i32, align 4
  %calltmp = call { i32, ptr, i8 } @nitpick_fs.fs_is_file(ptr %path)
  %raw.value = extractvalue { i32, ptr, i8 } %calltmp, 0
  store i32 %raw.value, ptr %is_f, align 4
  %is_f1 = load i32, ptr %is_f, align 4
  %eqtmp = icmp eq i32 %is_f1, 1
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  %calltmp2 = call { i32, ptr, i8 } @nitpick_fs.fs_remove(ptr %path)
  %raw.value3 = extractvalue { i32, ptr, i8 } %calltmp2, 0
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %raw.value3, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error

ifcont:                                           ; preds = %entry
  %ex = alloca i32, align 4
  %calltmp4 = call { i32, ptr, i8 } @nitpick_fs.fs_exists(ptr %path)
  %raw.value5 = extractvalue { i32, ptr, i8 } %calltmp4, 0
  store i32 %raw.value5, ptr %ex, align 4
  %ex6 = load i32, ptr %ex, align 4
  %eqtmp7 = icmp eq i32 %ex6, 0
  %ifcond8 = icmp ne i1 %eqtmp7, false
  br i1 %ifcond8, label %then9, label %ifcont10

then9:                                            ; preds = %ifcont
  ret { i32, ptr, i8 } { i32 1, ptr null, i8 0 }

ifcont10:                                         ; preds = %ifcont
  %listing = alloca ptr, align 8
  %calltmp11 = call { ptr, ptr, i8 } @nitpick_fs.fs_list_dir(ptr %path)
  %raw.value12 = extractvalue { ptr, ptr, i8 } %calltmp11, 0
  store ptr %raw.value12, ptr %listing, align 8
  %llen = alloca i64, align 8
  %listing13 = load ptr, ptr %listing, align 8
  %str = load %struct.NpkString, ptr %listing13, align 8
  %length = extractvalue %struct.NpkString %str, 1
  store i64 %length, ptr %llen, align 4
  %start = alloca i64, align 8
  store i64 0, ptr %start, align 4
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  %ok_val = alloca i32, align 4
  store i32 1, ptr %ok_val, align 4
  br label %whilecond

whilecond:                                        ; preds = %ifcont77, %ifcont10
  %i14 = load i64, ptr %i, align 4
  %llen15 = load i64, ptr %llen, align 4
  %letmp = icmp sle i64 %i14, %llen15
  %whilecond16 = icmp ne i1 %letmp, false
  br i1 %whilecond16, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %at_end = alloca i32, align 4
  store i32 0, ptr %at_end, align 4
  %at_nl = alloca i32, align 4
  store i32 0, ptr %at_nl, align 4
  %i17 = load i64, ptr %i, align 4
  %llen18 = load i64, ptr %llen, align 4
  %eqtmp19 = icmp eq i64 %i17, %llen18
  %ifcond20 = icmp ne i1 %eqtmp19, false
  br i1 %ifcond20, label %then21, label %ifcont22

then21:                                           ; preds = %whilebody
  store i32 1, ptr %at_end, align 4
  br label %ifcont22

ifcont22:                                         ; preds = %then21, %whilebody
  %i23 = load i64, ptr %i, align 4
  %llen24 = load i64, ptr %llen, align 4
  %lttmp = icmp slt i64 %i23, %llen24
  %ifcond25 = icmp ne i1 %lttmp, false
  br i1 %ifcond25, label %then26, label %ifcont34

then26:                                           ; preds = %ifcont22
  %ch = alloca ptr, align 8
  %listing27 = load ptr, ptr %listing, align 8
  %i28 = load i64, ptr %i, align 4
  %i29 = load i64, ptr %i, align 4
  %addtmp = add i64 %i29, 1
  %substr_result = call ptr @npk_string_substring_simple(ptr %listing27, i64 %i28, i64 %addtmp)
  store ptr %substr_result, ptr %ch, align 8
  %ch30 = load ptr, ptr %ch, align 8
  %str.lhs = load %struct.NpkString, ptr %ch30, align 8
  %str.rhs = load %struct.NpkString, ptr @.str.143, align 8
  %str.eq = call i1 @npk_string_equals(%struct.NpkString %str.lhs, %struct.NpkString %str.rhs)
  %ifcond31 = icmp ne i1 %str.eq, false
  br i1 %ifcond31, label %then32, label %ifcont33

then32:                                           ; preds = %then26
  store i32 1, ptr %at_nl, align 4
  br label %ifcont33

ifcont33:                                         ; preds = %then32, %then26
  br label %ifcont34

ifcont34:                                         ; preds = %ifcont33, %ifcont22
  %at_end35 = load i32, ptr %at_end, align 4
  %eqtmp36 = icmp eq i32 %at_end35, 1
  %or.lhs = icmp ne i1 %eqtmp36, false
  br i1 %or.lhs, label %or.merge, label %or.rhs

or.rhs:                                           ; preds = %ifcont34
  %at_nl37 = load i32, ptr %at_nl, align 4
  %eqtmp38 = icmp eq i32 %at_nl37, 1
  %or.rhs39 = icmp ne i1 %eqtmp38, false
  br label %or.merge

or.merge:                                         ; preds = %or.rhs, %ifcont34
  %or.result = phi i1 [ true, %ifcont34 ], [ %or.rhs39, %or.rhs ]
  %ifcond40 = icmp ne i1 %or.result, false
  br i1 %ifcond40, label %then41, label %ifcont77

then41:                                           ; preds = %or.merge
  %i42 = load i64, ptr %i, align 4
  %start43 = load i64, ptr %start, align 4
  %gttmp = icmp sgt i64 %i42, %start43
  %ifcond44 = icmp ne i1 %gttmp, false
  br i1 %ifcond44, label %then45, label %ifcont74

then45:                                           ; preds = %then41
  %entry46 = alloca ptr, align 8
  %listing47 = load ptr, ptr %listing, align 8
  %start48 = load i64, ptr %start, align 4
  %i49 = load i64, ptr %i, align 4
  %substr_result50 = call ptr @npk_string_substring_simple(ptr %listing47, i64 %start48, i64 %i49)
  store ptr %substr_result50, ptr %entry46, align 8
  %entry51 = load ptr, ptr %entry46, align 8
  %str.lhs52 = load %struct.NpkString, ptr %entry51, align 8
  %str.rhs53 = load %struct.NpkString, ptr @.str.145, align 8
  %str.eq54 = call i1 @npk_string_equals(%struct.NpkString %str.lhs52, %struct.NpkString %str.rhs53)
  %str.ne = xor i1 %str.eq54, true
  %and.lhs = icmp ne i1 %str.ne, false
  br i1 %and.lhs, label %and.rhs, label %and.merge

and.rhs:                                          ; preds = %then45
  %entry55 = load ptr, ptr %entry46, align 8
  %str.lhs56 = load %struct.NpkString, ptr %entry55, align 8
  %str.rhs57 = load %struct.NpkString, ptr @.str.147, align 8
  %str.eq58 = call i1 @npk_string_equals(%struct.NpkString %str.lhs56, %struct.NpkString %str.rhs57)
  %str.ne59 = xor i1 %str.eq58, true
  %and.rhs60 = icmp ne i1 %str.ne59, false
  br label %and.merge

and.merge:                                        ; preds = %and.rhs, %then45
  %and.result = phi i1 [ false, %then45 ], [ %and.rhs60, %and.rhs ]
  %ifcond61 = icmp ne i1 %and.result, false
  br i1 %ifcond61, label %then62, label %ifcont73

then62:                                           ; preds = %and.merge
  %child = alloca ptr, align 8
  %entry63 = load ptr, ptr %entry46, align 8
  %concat_str = call ptr @npk_string_concat_simple(ptr @.str.149, ptr %entry63)
  %concat_str64 = call ptr @npk_string_concat_simple(ptr %path, ptr %concat_str)
  store ptr %concat_str64, ptr %child, align 8
  %rc = alloca i32, align 4
  %child65 = load ptr, ptr %child, align 8
  %calltmp66 = call { i32, ptr, i8 } @nitpick_fs.fs_rmdir_recursive(ptr %child65)
  %raw.value67 = extractvalue { i32, ptr, i8 } %calltmp66, 0
  store i32 %raw.value67, ptr %rc, align 4
  %rc68 = load i32, ptr %rc, align 4
  %eqtmp69 = icmp eq i32 %rc68, 0
  %ifcond70 = icmp ne i1 %eqtmp69, false
  br i1 %ifcond70, label %then71, label %ifcont72

then71:                                           ; preds = %then62
  store i32 0, ptr %ok_val, align 4
  br label %ifcont72

ifcont72:                                         ; preds = %then71, %then62
  br label %ifcont73

ifcont73:                                         ; preds = %ifcont72, %and.merge
  br label %ifcont74

ifcont74:                                         ; preds = %ifcont73, %then41
  %i75 = load i64, ptr %i, align 4
  %addtmp76 = add i64 %i75, 1
  store i64 %addtmp76, ptr %start, align 4
  br label %ifcont77

ifcont77:                                         ; preds = %ifcont74, %or.merge
  %i78 = load i64, ptr %i, align 4
  %addtmp79 = add i64 %i78, 1
  store i64 %addtmp79, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %ok_val80 = load i32, ptr %ok_val, align 4
  %eqtmp81 = icmp eq i32 %ok_val80, 0
  %ifcond82 = icmp ne i1 %eqtmp81, false
  br i1 %ifcond82, label %then83, label %ifcont84

then83:                                           ; preds = %afterwhile
  ret { i32, ptr, i8 } zeroinitializer

ifcont84:                                         ; preds = %afterwhile
  %calltmp85 = call { i32, ptr, i8 } @nitpick_fs.fs_rmdir(ptr %path)
  %raw.value86 = extractvalue { i32, ptr, i8 } %calltmp85, 0
  %result.val87 = insertvalue { i32, ptr, i8 } undef, i32 %raw.value86, 0
  %result.err88 = insertvalue { i32, ptr, i8 } %result.val87, ptr null, 1
  %result.is_error89 = insertvalue { i32, ptr, i8 } %result.err88, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error89
}

declare ptr @nitpick_fs_error()

declare ptr @nitpick_fs_read_file(ptr)

declare i64 @nitpick_fs_read_length()

declare i32 @nitpick_fs_write_file(ptr, ptr)

declare i32 @nitpick_fs_append_file(ptr, ptr)

declare i32 @nitpick_fs_exists(ptr)

declare i32 @nitpick_fs_is_file(ptr)

declare i32 @nitpick_fs_is_dir(ptr)

declare i64 @nitpick_fs_file_size(ptr)

declare i64 @nitpick_fs_modified_time(ptr)

declare i32 @nitpick_fs_mkdir(ptr)

declare i32 @nitpick_fs_rmdir(ptr)

declare ptr @nitpick_fs_list_dir(ptr)

declare i32 @nitpick_fs_remove(ptr)

declare i32 @nitpick_fs_rename(ptr, ptr)

declare i32 @nitpick_fs_copy(ptr, ptr)

declare ptr @nitpick_fs_get_cwd()

declare ptr @nitpick_fs_absolute(ptr)

declare ptr @nitpick_fs_extension(ptr)

declare ptr @nitpick_fs_basename(ptr)

declare ptr @nitpick_fs_dirname(ptr)

declare ptr @nitpick_fs_last_result()

declare ptr @nitpick_fs_cleanup()

define linkonce_odr i32 @__nitpick_fs_init() {
entry:
  ret i32 0
}

define linkonce_odr { ptr, ptr, i8 } @parser._read_file(ptr %path) {
entry:
  %fp = alloca i64, align 8
  %calltmp = call i64 @fopen(ptr %path, ptr @.str.151)
  store i64 %calltmp, ptr %fp, align 4
  %fp1 = load i64, ptr %fp, align 4
  %eqtmp = icmp eq i64 %fp1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { ptr, ptr, i8 } { ptr @.str.153, ptr null, i8 0 }

ifcont:                                           ; preds = %entry
  %content = alloca ptr, align 8
  store ptr @.str.155, ptr %content, align 8
  %c = alloca i32, align 4
  %fp2 = load i64, ptr %fp, align 4
  %calltmp3 = call i32 @fgetc(i64 %fp2)
  store i32 %calltmp3, ptr %c, align 4
  br label %whilecond

whilecond:                                        ; preds = %whilebody, %ifcont
  %c4 = load i32, ptr %c, align 4
  %getmp = icmp sge i32 %c4, 0
  %whilecond5 = icmp ne i1 %getmp, false
  br i1 %whilecond5, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %content6 = load ptr, ptr %content, align 8
  %c7 = load i32, ptr %c, align 4
  %cast.trunc = trunc i32 %c7 to i8
  %char_str = call ptr @npk_string_from_char_simple(i8 %cast.trunc)
  %concat_str = call ptr @npk_string_concat_simple(ptr %content6, ptr %char_str)
  store ptr %concat_str, ptr %content, align 8
  %fp8 = load i64, ptr %fp, align 4
  %calltmp9 = call i32 @fgetc(i64 %fp8)
  store i32 %calltmp9, ptr %c, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %fp10 = load i64, ptr %fp, align 4
  %calltmp11 = call i32 @fclose(i64 %fp10)
  %content12 = load ptr, ptr %content, align 8
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %content12, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @parser.getenv_file(ptr %key, ptr %env_file) {
entry:
  %str = load %struct.NpkString, ptr %env_file, align 8
  %length = extractvalue %struct.NpkString %str, 1
  %eqtmp = icmp eq i64 %length, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { ptr, ptr, i8 } { ptr @.str.157, ptr null, i8 0 }

ifcont:                                           ; preds = %entry
  %fp = alloca i64, align 8
  %calltmp = call i64 @fopen(ptr %env_file, ptr @.str.159)
  store i64 %calltmp, ptr %fp, align 4
  %fp1 = load i64, ptr %fp, align 4
  %eqtmp2 = icmp eq i64 %fp1, 0
  %ifcond3 = icmp ne i1 %eqtmp2, false
  br i1 %ifcond3, label %then4, label %ifcont5

then4:                                            ; preds = %ifcont
  ret { ptr, ptr, i8 } { ptr @.str.161, ptr null, i8 0 }

ifcont5:                                          ; preds = %ifcont
  %result = alloca ptr, align 8
  store ptr @.str.163, ptr %result, align 8
  %current = alloca ptr, align 8
  store ptr @.str.165, ptr %current, align 8
  %c = alloca i32, align 4
  %fp6 = load i64, ptr %fp, align 4
  %calltmp7 = call i32 @fgetc(i64 %fp6)
  store i32 %calltmp7, ptr %c, align 4
  br label %whilecond

whilecond:                                        ; preds = %ifcont37, %ifcont5
  %c8 = load i32, ptr %c, align 4
  %getmp = icmp sge i32 %c8, 0
  %whilecond9 = icmp ne i1 %getmp, false
  br i1 %whilecond9, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %c10 = load i32, ptr %c, align 4
  %eqtmp11 = icmp eq i32 %c10, 10
  %ifcond12 = icmp ne i1 %eqtmp11, false
  br i1 %ifcond12, label %then13, label %else

then13:                                           ; preds = %whilebody
  %prefix = alloca ptr, align 8
  %concat_str = call ptr @npk_string_concat_simple(ptr %key, ptr @.str.167)
  store ptr %concat_str, ptr %prefix, align 8
  %current14 = load ptr, ptr %current, align 8
  %prefix15 = load ptr, ptr %prefix, align 8
  %str16 = load %struct.NpkString, ptr %current14, align 8
  %prefix17 = load %struct.NpkString, ptr %prefix15, align 8
  %starts_with = call i1 @npk_string_starts_with(%struct.NpkString %str16, %struct.NpkString %prefix17)
  %ifcond18 = icmp ne i1 %starts_with, false
  br i1 %ifcond18, label %then19, label %ifcont29

then19:                                           ; preds = %then13
  %len = alloca i64, align 8
  %current20 = load ptr, ptr %current, align 8
  %str21 = load %struct.NpkString, ptr %current20, align 8
  %length22 = extractvalue %struct.NpkString %str21, 1
  store i64 %length22, ptr %len, align 4
  %plen = alloca i64, align 8
  %prefix23 = load ptr, ptr %prefix, align 8
  %str24 = load %struct.NpkString, ptr %prefix23, align 8
  %length25 = extractvalue %struct.NpkString %str24, 1
  store i64 %length25, ptr %plen, align 4
  %current26 = load ptr, ptr %current, align 8
  %plen27 = load i64, ptr %plen, align 4
  %len28 = load i64, ptr %len, align 4
  %substr_result = call ptr @npk_string_substring_simple(ptr %current26, i64 %plen27, i64 %len28)
  store ptr %substr_result, ptr %result, align 8
  br label %afterwhile

afterbreak:                                       ; No predecessors!
  br label %ifcont29

ifcont29:                                         ; preds = %afterbreak, %then13
  store ptr @.str.169, ptr %current, align 8
  br label %ifcont37

else:                                             ; preds = %whilebody
  %c30 = load i32, ptr %c, align 4
  %netmp = icmp ne i32 %c30, 13
  %ifcond31 = icmp ne i1 %netmp, false
  br i1 %ifcond31, label %then32, label %ifcont36

then32:                                           ; preds = %else
  %current33 = load ptr, ptr %current, align 8
  %c34 = load i32, ptr %c, align 4
  %cast.trunc = trunc i32 %c34 to i8
  %char_str = call ptr @npk_string_from_char_simple(i8 %cast.trunc)
  %concat_str35 = call ptr @npk_string_concat_simple(ptr %current33, ptr %char_str)
  store ptr %concat_str35, ptr %current, align 8
  br label %ifcont36

ifcont36:                                         ; preds = %then32, %else
  br label %ifcont37

ifcont37:                                         ; preds = %ifcont36, %ifcont29
  %fp38 = load i64, ptr %fp, align 4
  %calltmp39 = call i32 @fgetc(i64 %fp38)
  store i32 %calltmp39, ptr %c, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %then19, %whilecond
  %fp40 = load i64, ptr %fp, align 4
  %calltmp41 = call i32 @fclose(i64 %fp40)
  %result42 = load ptr, ptr %result, align 8
  %str43 = load %struct.NpkString, ptr %result42, align 8
  %length44 = extractvalue %struct.NpkString %str43, 1
  %eqtmp45 = icmp eq i64 %length44, 0
  %and.lhs = icmp ne i1 %eqtmp45, false
  br i1 %and.lhs, label %and.rhs, label %and.merge

and.rhs:                                          ; preds = %afterwhile
  %current46 = load ptr, ptr %current, align 8
  %str47 = load %struct.NpkString, ptr %current46, align 8
  %length48 = extractvalue %struct.NpkString %str47, 1
  %gttmp = icmp sgt i64 %length48, 0
  %and.rhs49 = icmp ne i1 %gttmp, false
  br label %and.merge

and.merge:                                        ; preds = %and.rhs, %afterwhile
  %and.result = phi i1 [ false, %afterwhile ], [ %and.rhs49, %and.rhs ]
  %ifcond50 = icmp ne i1 %and.result, false
  br i1 %ifcond50, label %then51, label %ifcont74

then51:                                           ; preds = %and.merge
  %prefix52 = alloca ptr, align 8
  %concat_str53 = call ptr @npk_string_concat_simple(ptr %key, ptr @.str.171)
  store ptr %concat_str53, ptr %prefix52, align 8
  %current54 = load ptr, ptr %current, align 8
  %prefix55 = load ptr, ptr %prefix52, align 8
  %str56 = load %struct.NpkString, ptr %current54, align 8
  %prefix57 = load %struct.NpkString, ptr %prefix55, align 8
  %starts_with58 = call i1 @npk_string_starts_with(%struct.NpkString %str56, %struct.NpkString %prefix57)
  %ifcond59 = icmp ne i1 %starts_with58, false
  br i1 %ifcond59, label %then60, label %ifcont73

then60:                                           ; preds = %then51
  %len61 = alloca i64, align 8
  %current62 = load ptr, ptr %current, align 8
  %str63 = load %struct.NpkString, ptr %current62, align 8
  %length64 = extractvalue %struct.NpkString %str63, 1
  store i64 %length64, ptr %len61, align 4
  %plen65 = alloca i64, align 8
  %prefix66 = load ptr, ptr %prefix52, align 8
  %str67 = load %struct.NpkString, ptr %prefix66, align 8
  %length68 = extractvalue %struct.NpkString %str67, 1
  store i64 %length68, ptr %plen65, align 4
  %current69 = load ptr, ptr %current, align 8
  %plen70 = load i64, ptr %plen65, align 4
  %len71 = load i64, ptr %len61, align 4
  %substr_result72 = call ptr @npk_string_substring_simple(ptr %current69, i64 %plen70, i64 %len71)
  store ptr %substr_result72, ptr %result, align 8
  br label %ifcont73

ifcont73:                                         ; preds = %then60, %then51
  br label %ifcont74

ifcont74:                                         ; preds = %ifcont73, %and.merge
  %result75 = load ptr, ptr %result, align 8
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %result75, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @parser.getenv_proc(ptr %key) {
entry:
  %fp = alloca i64, align 8
  %calltmp = call i64 @fopen(ptr @.str.173, ptr @.str.175)
  store i64 %calltmp, ptr %fp, align 4
  %fp1 = load i64, ptr %fp, align 4
  %eqtmp = icmp eq i64 %fp1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { ptr, ptr, i8 } { ptr @.str.177, ptr null, i8 0 }

ifcont:                                           ; preds = %entry
  %result = alloca ptr, align 8
  store ptr @.str.179, ptr %result, align 8
  %current = alloca ptr, align 8
  store ptr @.str.181, ptr %current, align 8
  %c = alloca i32, align 4
  %fp2 = load i64, ptr %fp, align 4
  %calltmp3 = call i32 @fgetc(i64 %fp2)
  store i32 %calltmp3, ptr %c, align 4
  br label %whilecond

whilecond:                                        ; preds = %ifcont27, %ifcont
  %c4 = load i32, ptr %c, align 4
  %getmp = icmp sge i32 %c4, 0
  %whilecond5 = icmp ne i1 %getmp, false
  br i1 %whilecond5, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %c6 = load i32, ptr %c, align 4
  %eqtmp7 = icmp eq i32 %c6, 0
  %ifcond8 = icmp ne i1 %eqtmp7, false
  br i1 %ifcond8, label %then9, label %else

then9:                                            ; preds = %whilebody
  %prefix = alloca ptr, align 8
  %concat_str = call ptr @npk_string_concat_simple(ptr %key, ptr @.str.183)
  store ptr %concat_str, ptr %prefix, align 8
  %current10 = load ptr, ptr %current, align 8
  %prefix11 = load ptr, ptr %prefix, align 8
  %str = load %struct.NpkString, ptr %current10, align 8
  %prefix12 = load %struct.NpkString, ptr %prefix11, align 8
  %starts_with = call i1 @npk_string_starts_with(%struct.NpkString %str, %struct.NpkString %prefix12)
  %ifcond13 = icmp ne i1 %starts_with, false
  br i1 %ifcond13, label %then14, label %ifcont23

then14:                                           ; preds = %then9
  %len = alloca i64, align 8
  %current15 = load ptr, ptr %current, align 8
  %str16 = load %struct.NpkString, ptr %current15, align 8
  %length = extractvalue %struct.NpkString %str16, 1
  store i64 %length, ptr %len, align 4
  %plen = alloca i64, align 8
  %prefix17 = load ptr, ptr %prefix, align 8
  %str18 = load %struct.NpkString, ptr %prefix17, align 8
  %length19 = extractvalue %struct.NpkString %str18, 1
  store i64 %length19, ptr %plen, align 4
  %current20 = load ptr, ptr %current, align 8
  %plen21 = load i64, ptr %plen, align 4
  %len22 = load i64, ptr %len, align 4
  %substr_result = call ptr @npk_string_substring_simple(ptr %current20, i64 %plen21, i64 %len22)
  store ptr %substr_result, ptr %result, align 8
  br label %afterwhile

afterbreak:                                       ; No predecessors!
  br label %ifcont23

ifcont23:                                         ; preds = %afterbreak, %then9
  store ptr @.str.185, ptr %current, align 8
  br label %ifcont27

else:                                             ; preds = %whilebody
  %current24 = load ptr, ptr %current, align 8
  %c25 = load i32, ptr %c, align 4
  %cast.trunc = trunc i32 %c25 to i8
  %char_str = call ptr @npk_string_from_char_simple(i8 %cast.trunc)
  %concat_str26 = call ptr @npk_string_concat_simple(ptr %current24, ptr %char_str)
  store ptr %concat_str26, ptr %current, align 8
  br label %ifcont27

ifcont27:                                         ; preds = %else, %ifcont23
  %fp28 = load i64, ptr %fp, align 4
  %calltmp29 = call i32 @fgetc(i64 %fp28)
  store i32 %calltmp29, ptr %c, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %then14, %whilecond
  %fp30 = load i64, ptr %fp, align 4
  %calltmp31 = call i32 @fclose(i64 %fp30)
  %result32 = load ptr, ptr %result, align 8
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %result32, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @parser.replace_env_vars(ptr %input, ptr %env_file) {
entry:
  %result = alloca ptr, align 8
  store ptr %input, ptr %result, align 8
  br label %whilecond

whilecond:                                        ; preds = %ifcont26, %entry
  br i1 true, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %idx1 = alloca i64, align 8
  %result1 = load ptr, ptr %result, align 8
  %index_of_result = call i64 @npk_string_index_of_simple(ptr %result1, ptr @.str.187)
  store i64 %index_of_result, ptr %idx1, align 4
  %idx12 = load i64, ptr %idx1, align 4
  %lttmp = icmp slt i64 %idx12, 0
  %ifcond = icmp ne i1 %lttmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %whilebody
  br label %afterwhile

afterbreak:                                       ; No predecessors!
  br label %ifcont

ifcont:                                           ; preds = %afterbreak, %whilebody
  %after_open = alloca ptr, align 8
  %result3 = load ptr, ptr %result, align 8
  %idx14 = load i64, ptr %idx1, align 4
  %addtmp = add i64 %idx14, 2
  %result5 = load ptr, ptr %result, align 8
  %str = load %struct.NpkString, ptr %result5, align 8
  %length = extractvalue %struct.NpkString %str, 1
  %substr_result = call ptr @npk_string_substring_simple(ptr %result3, i64 %addtmp, i64 %length)
  store ptr %substr_result, ptr %after_open, align 8
  %idx2 = alloca i64, align 8
  %after_open6 = load ptr, ptr %after_open, align 8
  %index_of_result7 = call i64 @npk_string_index_of_simple(ptr %after_open6, ptr @.str.189)
  store i64 %index_of_result7, ptr %idx2, align 4
  %idx28 = load i64, ptr %idx2, align 4
  %lttmp9 = icmp slt i64 %idx28, 0
  %ifcond10 = icmp ne i1 %lttmp9, false
  br i1 %ifcond10, label %then11, label %ifcont13

then11:                                           ; preds = %ifcont
  br label %afterwhile

afterbreak12:                                     ; No predecessors!
  br label %ifcont13

ifcont13:                                         ; preds = %afterbreak12, %ifcont
  %var_name = alloca ptr, align 8
  %after_open14 = load ptr, ptr %after_open, align 8
  %idx215 = load i64, ptr %idx2, align 4
  %substr_result16 = call ptr @npk_string_substring_simple(ptr %after_open14, i64 0, i64 %idx215)
  store ptr %substr_result16, ptr %var_name, align 8
  %var_val = alloca ptr, align 8
  %var_name17 = load ptr, ptr %var_name, align 8
  %calltmp = call { ptr, ptr, i8 } @parser.getenv_file(ptr %var_name17, ptr %env_file)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  store ptr %raw.value, ptr %var_val, align 8
  %var_val18 = load ptr, ptr %var_val, align 8
  %str19 = load %struct.NpkString, ptr %var_val18, align 8
  %length20 = extractvalue %struct.NpkString %str19, 1
  %eqtmp = icmp eq i64 %length20, 0
  %ifcond21 = icmp ne i1 %eqtmp, false
  br i1 %ifcond21, label %then22, label %ifcont26

then22:                                           ; preds = %ifcont13
  %var_name23 = load ptr, ptr %var_name, align 8
  %calltmp24 = call { ptr, ptr, i8 } @parser.getenv_proc(ptr %var_name23)
  %raw.value25 = extractvalue { ptr, ptr, i8 } %calltmp24, 0
  store ptr %raw.value25, ptr %var_val, align 8
  br label %ifcont26

ifcont26:                                         ; preds = %then22, %ifcont13
  %before = alloca ptr, align 8
  %result27 = load ptr, ptr %result, align 8
  %idx128 = load i64, ptr %idx1, align 4
  %substr_result29 = call ptr @npk_string_substring_simple(ptr %result27, i64 0, i64 %idx128)
  store ptr %substr_result29, ptr %before, align 8
  %after_close = alloca ptr, align 8
  %after_open30 = load ptr, ptr %after_open, align 8
  %idx231 = load i64, ptr %idx2, align 4
  %addtmp32 = add i64 %idx231, 2
  %after_open33 = load ptr, ptr %after_open, align 8
  %str34 = load %struct.NpkString, ptr %after_open33, align 8
  %length35 = extractvalue %struct.NpkString %str34, 1
  %substr_result36 = call ptr @npk_string_substring_simple(ptr %after_open30, i64 %addtmp32, i64 %length35)
  store ptr %substr_result36, ptr %after_close, align 8
  %before37 = load ptr, ptr %before, align 8
  %var_val38 = load ptr, ptr %var_val, align 8
  %after_close39 = load ptr, ptr %after_close, align 8
  %concat_str = call ptr @npk_string_concat_simple(ptr %var_val38, ptr %after_close39)
  %concat_str40 = call ptr @npk_string_concat_simple(ptr %before37, ptr %concat_str)
  store ptr %concat_str40, ptr %result, align 8
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %then11, %then, %whilecond
  %result41 = load ptr, ptr %result, align 8
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %result41, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { %Request, ptr, i8 } @parser.parse_request(ptr %file_path, ptr %env_file) {
entry:
  %req = alloca %Request, align 8
  %calltmp = call { %Request, ptr, i8 } @types.Request_create(ptr @.str.191, ptr @.str.193)
  %raw.value = extractvalue { %Request, ptr, i8 } %calltmp, 0
  store %Request %raw.value, ptr %req, align 8
  %content = alloca ptr, align 8
  %calltmp1 = call { ptr, ptr, i8 } @parser._read_file(ptr %file_path)
  %raw.value2 = extractvalue { ptr, ptr, i8 } %calltmp1, 0
  store ptr %raw.value2, ptr %content, align 8
  %content3 = load ptr, ptr %content, align 8
  %str = load %struct.NpkString, ptr %content3, align 8
  %length = extractvalue %struct.NpkString %str, 1
  %eqtmp = icmp eq i64 %length, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  %req4 = load %Request, ptr %req, align 8
  %result.val = insertvalue { %Request, ptr, i8 } undef, %Request %req4, 0
  %result.err = insertvalue { %Request, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { %Request, ptr, i8 } %result.err, i8 0, 2
  ret { %Request, ptr, i8 } %result.is_error

ifcont:                                           ; preds = %entry
  %content5 = load ptr, ptr %content, align 8
  %calltmp6 = call { ptr, ptr, i8 } @nitpick_str.Str_replace_all(ptr %content5, ptr @.str.195, ptr @.str.197)
  %raw.value7 = extractvalue { ptr, ptr, i8 } %calltmp6, 0
  store ptr %raw.value7, ptr %content, align 8
  %num_lines = alloca i64, align 8
  %content8 = load ptr, ptr %content, align 8
  %calltmp9 = call { i64, ptr, i8 } @nitpick_str.Str_line_count(ptr %content8)
  %raw.value10 = extractvalue { i64, ptr, i8 } %calltmp9, 0
  store i64 %raw.value10, ptr %num_lines, align 4
  %num_lines11 = load i64, ptr %num_lines, align 4
  %eqtmp12 = icmp eq i64 %num_lines11, 0
  %ifcond13 = icmp ne i1 %eqtmp12, false
  br i1 %ifcond13, label %then14, label %ifcont19

then14:                                           ; preds = %ifcont
  %req15 = load %Request, ptr %req, align 8
  %result.val16 = insertvalue { %Request, ptr, i8 } undef, %Request %req15, 0
  %result.err17 = insertvalue { %Request, ptr, i8 } %result.val16, ptr null, 1
  %result.is_error18 = insertvalue { %Request, ptr, i8 } %result.err17, i8 0, 2
  ret { %Request, ptr, i8 } %result.is_error18

ifcont19:                                         ; preds = %ifcont
  %line0 = alloca ptr, align 8
  %content20 = load ptr, ptr %content, align 8
  %calltmp21 = call { ptr, ptr, i8 } @nitpick_str.Str_token(ptr %content20, ptr @.str.199, i64 0)
  %raw.value22 = extractvalue { ptr, ptr, i8 } %calltmp21, 0
  store ptr %raw.value22, ptr %line0, align 8
  %tokens_count = alloca i64, align 8
  %line023 = load ptr, ptr %line0, align 8
  %calltmp24 = call { i64, ptr, i8 } @nitpick_str.Str_token_count(ptr %line023, ptr @.str.201)
  %raw.value25 = extractvalue { i64, ptr, i8 } %calltmp24, 0
  store i64 %raw.value25, ptr %tokens_count, align 4
  %tokens_count26 = load i64, ptr %tokens_count, align 4
  %getmp = icmp sge i64 %tokens_count26, 2
  %ifcond27 = icmp ne i1 %getmp, false
  br i1 %ifcond27, label %then28, label %else

then28:                                           ; preds = %ifcont19
  %line029 = load ptr, ptr %line0, align 8
  %calltmp30 = call { ptr, ptr, i8 } @nitpick_str.Str_token(ptr %line029, ptr @.str.203, i64 0)
  %raw.value31 = extractvalue { ptr, ptr, i8 } %calltmp30, 0
  %method.ptr = getelementptr inbounds nuw %Request, ptr %req, i32 0, i32 0
  store ptr %raw.value31, ptr %method.ptr, align 8
  %line032 = load ptr, ptr %line0, align 8
  %calltmp33 = call { ptr, ptr, i8 } @nitpick_str.Str_token(ptr %line032, ptr @.str.205, i64 1)
  %raw.value34 = extractvalue { ptr, ptr, i8 } %calltmp33, 0
  %url.ptr = getelementptr inbounds nuw %Request, ptr %req, i32 0, i32 1
  store ptr %raw.value34, ptr %url.ptr, align 8
  br label %ifcont37

else:                                             ; preds = %ifcont19
  %line035 = load ptr, ptr %line0, align 8
  %trim_result = call ptr @npk_string_trim_simple(ptr %line035)
  %url.ptr36 = getelementptr inbounds nuw %Request, ptr %req, i32 0, i32 1
  store ptr %trim_result, ptr %url.ptr36, align 8
  br label %ifcont37

ifcont37:                                         ; preds = %else, %then28
  %i = alloca i64, align 8
  store i64 1, ptr %i, align 4
  %in_body = alloca i32, align 4
  store i32 0, ptr %in_body, align 4
  %body_content = alloca ptr, align 8
  store ptr @.str.207, ptr %body_content, align 8
  br label %whilecond

whilecond:                                        ; preds = %ifcont88, %ifcont37
  %i38 = load i64, ptr %i, align 4
  %num_lines39 = load i64, ptr %num_lines, align 4
  %lttmp = icmp slt i64 %i38, %num_lines39
  %whilecond40 = icmp ne i1 %lttmp, false
  br i1 %whilecond40, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %line = alloca ptr, align 8
  %content41 = load ptr, ptr %content, align 8
  %i42 = load i64, ptr %i, align 4
  %calltmp43 = call { ptr, ptr, i8 } @nitpick_str.Str_token(ptr %content41, ptr @.str.209, i64 %i42)
  %raw.value44 = extractvalue { ptr, ptr, i8 } %calltmp43, 0
  store ptr %raw.value44, ptr %line, align 8
  %in_body45 = load i32, ptr %in_body, align 4
  %eqtmp46 = icmp eq i32 %in_body45, 0
  %ifcond47 = icmp ne i1 %eqtmp46, false
  br i1 %ifcond47, label %then48, label %else75

then48:                                           ; preds = %whilebody
  %line49 = load ptr, ptr %line, align 8
  %calltmp50 = call { i1, ptr, i8 } @nitpick_str.Str_is_blank(ptr %line49)
  %raw.value51 = extractvalue { i1, ptr, i8 } %calltmp50, 0
  %ifcond52 = icmp ne i1 %raw.value51, false
  br i1 %ifcond52, label %then53, label %else54

then53:                                           ; preds = %then48
  store i32 1, ptr %in_body, align 4
  br label %ifcont74

else54:                                           ; preds = %then48
  %colon_idx = alloca i64, align 8
  %line55 = load ptr, ptr %line, align 8
  %index_of_result = call i64 @npk_string_index_of_simple(ptr %line55, ptr @.str.211)
  store i64 %index_of_result, ptr %colon_idx, align 4
  %colon_idx56 = load i64, ptr %colon_idx, align 4
  %gttmp = icmp sgt i64 %colon_idx56, 0
  %ifcond57 = icmp ne i1 %gttmp, false
  br i1 %ifcond57, label %then58, label %ifcont73

then58:                                           ; preds = %else54
  %key = alloca ptr, align 8
  %line59 = load ptr, ptr %line, align 8
  %calltmp60 = call { ptr, ptr, i8 } @nitpick_str.Str_before(ptr %line59, ptr @.str.213)
  %raw.value61 = extractvalue { ptr, ptr, i8 } %calltmp60, 0
  store ptr %raw.value61, ptr %key, align 8
  %val = alloca ptr, align 8
  %line62 = load ptr, ptr %line, align 8
  %calltmp63 = call { ptr, ptr, i8 } @nitpick_str.Str_after(ptr %line62, ptr @.str.215)
  %raw.value64 = extractvalue { ptr, ptr, i8 } %calltmp63, 0
  %trim_result65 = call ptr @npk_string_trim_simple(ptr %raw.value64)
  store ptr %trim_result65, ptr %val, align 8
  %hdr = alloca ptr, align 8
  %key66 = load ptr, ptr %key, align 8
  %val67 = load ptr, ptr %val, align 8
  %concat_str = call ptr @npk_string_concat_simple(ptr @.str.217, ptr %val67)
  %concat_str68 = call ptr @npk_string_concat_simple(ptr %key66, ptr %concat_str)
  store ptr %concat_str68, ptr %hdr, align 8
  %req69 = load %Request, ptr %req, align 8
  %hdr70 = load ptr, ptr %hdr, align 8
  %calltmp71 = call { %Request, ptr, i8 } @types.Request_add_header(%Request %req69, ptr %hdr70)
  %raw.value72 = extractvalue { %Request, ptr, i8 } %calltmp71, 0
  store %Request %raw.value72, ptr %req, align 8
  br label %ifcont73

ifcont73:                                         ; preds = %then58, %else54
  br label %ifcont74

ifcont74:                                         ; preds = %ifcont73, %then53
  br label %ifcont88

else75:                                           ; preds = %whilebody
  %body_content76 = load ptr, ptr %body_content, align 8
  %str77 = load %struct.NpkString, ptr %body_content76, align 8
  %length78 = extractvalue %struct.NpkString %str77, 1
  %gttmp79 = icmp sgt i64 %length78, 0
  %ifcond80 = icmp ne i1 %gttmp79, false
  br i1 %ifcond80, label %then81, label %ifcont84

then81:                                           ; preds = %else75
  %body_content82 = load ptr, ptr %body_content, align 8
  %concat_str83 = call ptr @npk_string_concat_simple(ptr %body_content82, ptr @.str.219)
  store ptr %concat_str83, ptr %body_content, align 8
  br label %ifcont84

ifcont84:                                         ; preds = %then81, %else75
  %body_content85 = load ptr, ptr %body_content, align 8
  %line86 = load ptr, ptr %line, align 8
  %concat_str87 = call ptr @npk_string_concat_simple(ptr %body_content85, ptr %line86)
  store ptr %concat_str87, ptr %body_content, align 8
  br label %ifcont88

ifcont88:                                         ; preds = %ifcont84, %ifcont74
  %i89 = load i64, ptr %i, align 4
  %addtmp = add i64 %i89, 1
  store i64 %addtmp, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %body_content90 = load ptr, ptr %body_content, align 8
  %body.ptr = getelementptr inbounds nuw %Request, ptr %req, i32 0, i32 3
  store ptr %body_content90, ptr %body.ptr, align 8
  %req91 = load %Request, ptr %req, align 8
  %url = extractvalue %Request %req91, 1
  %calltmp92 = call { ptr, ptr, i8 } @parser.replace_env_vars(ptr %url, ptr %env_file)
  %raw.value93 = extractvalue { ptr, ptr, i8 } %calltmp92, 0
  %url.ptr94 = getelementptr inbounds nuw %Request, ptr %req, i32 0, i32 1
  store ptr %raw.value93, ptr %url.ptr94, align 8
  %req95 = load %Request, ptr %req, align 8
  %headers_pipe = extractvalue %Request %req95, 2
  %calltmp96 = call { ptr, ptr, i8 } @parser.replace_env_vars(ptr %headers_pipe, ptr %env_file)
  %raw.value97 = extractvalue { ptr, ptr, i8 } %calltmp96, 0
  %headers_pipe.ptr = getelementptr inbounds nuw %Request, ptr %req, i32 0, i32 2
  store ptr %raw.value97, ptr %headers_pipe.ptr, align 8
  %req98 = load %Request, ptr %req, align 8
  %body = extractvalue %Request %req98, 3
  %calltmp99 = call { ptr, ptr, i8 } @parser.replace_env_vars(ptr %body, ptr %env_file)
  %raw.value100 = extractvalue { ptr, ptr, i8 } %calltmp99, 0
  %body.ptr101 = getelementptr inbounds nuw %Request, ptr %req, i32 0, i32 3
  store ptr %raw.value100, ptr %body.ptr101, align 8
  %req102 = load %Request, ptr %req, align 8
  %result.val103 = insertvalue { %Request, ptr, i8 } undef, %Request %req102, 0
  %result.err104 = insertvalue { %Request, ptr, i8 } %result.val103, ptr null, 1
  %result.is_error105 = insertvalue { %Request, ptr, i8 } %result.err104, i8 0, 2
  ret { %Request, ptr, i8 } %result.is_error105
}

declare i64 @fopen(ptr, ptr)

declare i32 @fgetc(i64)

declare i32 @fclose(i64)

declare ptr @npk_string_from_char_simple(i8)

define linkonce_odr i32 @__parser_init() {
entry:
  ret i32 0
}

define linkonce_odr { i32, ptr, i8 } @nitpick_http.http_init() {
entry:
  %r = alloca i32, align 4
  %calltmp = call i32 @nitpick_http_init()
  store i32 %calltmp, ptr %r, align 4
  %r1 = load i32, ptr %r, align 4
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %r1, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error
}

define linkonce_odr { %struct.NIL, ptr, i8 } @nitpick_http.http_cleanup() {
entry:
  %calltmp = call ptr @nitpick_http_cleanup()
  ret { %struct.NIL, ptr, i8 } zeroinitializer
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_http.http_last_result() {
entry:
  %calltmp = call i64 @nitpick_http_last_result()
  %0 = inttoptr i64 %calltmp to ptr
  %str_result = call ptr @npk_string_from_cstr_simple(ptr %0)
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %str_result, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { %struct.NIL, ptr, i8 } @nitpick_http.http_enable_ollama_stream(i32 %enable) {
entry:
  %enable.addr = alloca i32, align 4
  store i32 %enable, ptr %enable.addr, align 4
  %enable1 = load i32, ptr %enable.addr, align 4
  %calltmp = call ptr @nitpick_http_enable_ollama_stream(i32 %enable1)
  ret { %struct.NIL, ptr, i8 } zeroinitializer
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_http.http_get_ollama_content() {
entry:
  %calltmp = call i64 @nitpick_http_get_ollama_content()
  %0 = inttoptr i64 %calltmp to ptr
  %str_result = call ptr @npk_string_from_cstr_simple(ptr %0)
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %str_result, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_http.http_get_ollama_tool() {
entry:
  %calltmp = call i64 @nitpick_http_get_ollama_tool()
  %0 = inttoptr i64 %calltmp to ptr
  %str_result = call ptr @npk_string_from_cstr_simple(ptr %0)
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %str_result, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_http.http_get_ollama_arg() {
entry:
  %calltmp = call i64 @nitpick_http_get_ollama_arg()
  %0 = inttoptr i64 %calltmp to ptr
  %str_result = call ptr @npk_string_from_cstr_simple(ptr %0)
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %str_result, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { i32, ptr, i8 } @nitpick_http.http_get_ollama_conf() {
entry:
  %calltmp = call i32 @nitpick_http_get_ollama_conf()
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %calltmp, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error
}

define linkonce_odr { %struct.NIL, ptr, i8 } @nitpick_http.http_set_header(ptr %header) {
entry:
  %calltmp = call ptr @nitpick_http_set_header(ptr %header)
  ret { %struct.NIL, ptr, i8 } zeroinitializer
}

define linkonce_odr { %struct.NIL, ptr, i8 } @nitpick_http.http_clear_headers() {
entry:
  %calltmp = call ptr @nitpick_http_clear_headers()
  ret { %struct.NIL, ptr, i8 } zeroinitializer
}

define linkonce_odr { %struct.NIL, ptr, i8 } @nitpick_http.http_set_timeout(i32 %seconds) {
entry:
  %seconds.addr = alloca i32, align 4
  store i32 %seconds, ptr %seconds.addr, align 4
  %seconds1 = load i32, ptr %seconds.addr, align 4
  %calltmp = call ptr @nitpick_http_set_timeout(i32 %seconds1)
  ret { %struct.NIL, ptr, i8 } zeroinitializer
}

define linkonce_odr { %struct.NIL, ptr, i8 } @nitpick_http.http_follow_redirects(i32 %follow) {
entry:
  %follow.addr = alloca i32, align 4
  store i32 %follow, ptr %follow.addr, align 4
  %follow1 = load i32, ptr %follow.addr, align 4
  %calltmp = call ptr @nitpick_http_set_follow_redirects(i32 %follow1)
  ret { %struct.NIL, ptr, i8 } zeroinitializer
}

define linkonce_odr { %struct.NIL, ptr, i8 } @nitpick_http.http_set_user_agent(ptr %ua) {
entry:
  %calltmp = call ptr @nitpick_http_set_user_agent(ptr %ua)
  ret { %struct.NIL, ptr, i8 } zeroinitializer
}

define linkonce_odr { i32, ptr, i8 } @nitpick_http.http_get(ptr %url) {
entry:
  %r = alloca i32, align 4
  %calltmp = call i32 @nitpick_http_get(ptr %url)
  store i32 %calltmp, ptr %r, align 4
  %r1 = load i32, ptr %r, align 4
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %r1, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error
}

define linkonce_odr { i32, ptr, i8 } @nitpick_http.http_post(ptr %url, ptr %body) {
entry:
  %r = alloca i32, align 4
  %calltmp = call i32 @nitpick_http_post(ptr %url, ptr %body)
  store i32 %calltmp, ptr %r, align 4
  %r1 = load i32, ptr %r, align 4
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %r1, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error
}

define linkonce_odr { i32, ptr, i8 } @nitpick_http.http_put(ptr %url, ptr %body) {
entry:
  %r = alloca i32, align 4
  %calltmp = call i32 @nitpick_http_put(ptr %url, ptr %body)
  store i32 %calltmp, ptr %r, align 4
  %r1 = load i32, ptr %r, align 4
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %r1, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error
}

define linkonce_odr { i32, ptr, i8 } @nitpick_http.http_delete(ptr %url) {
entry:
  %r = alloca i32, align 4
  %calltmp = call i32 @nitpick_http_delete(ptr %url)
  store i32 %calltmp, ptr %r, align 4
  %r1 = load i32, ptr %r, align 4
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %r1, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error
}

define linkonce_odr { i32, ptr, i8 } @nitpick_http.http_patch(ptr %url, ptr %body) {
entry:
  %r = alloca i32, align 4
  %calltmp = call i32 @nitpick_http_patch(ptr %url, ptr %body)
  store i32 %calltmp, ptr %r, align 4
  %r1 = load i32, ptr %r, align 4
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %r1, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error
}

define linkonce_odr { i32, ptr, i8 } @nitpick_http.http_head(ptr %url) {
entry:
  %r = alloca i32, align 4
  %calltmp = call i32 @nitpick_http_head(ptr %url)
  store i32 %calltmp, ptr %r, align 4
  %r1 = load i32, ptr %r, align 4
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %r1, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error
}

define linkonce_odr { i32, ptr, i8 } @nitpick_http.http_status() {
entry:
  %r = alloca i32, align 4
  %calltmp = call i32 @nitpick_http_status()
  store i32 %calltmp, ptr %r, align 4
  %r1 = load i32, ptr %r, align 4
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %r1, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_http.http_body() {
entry:
  %calltmp = call i64 @nitpick_http_response_body()
  %0 = inttoptr i64 %calltmp to ptr
  %str_result = call ptr @npk_string_from_cstr_simple(ptr %0)
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %str_result, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { i32, ptr, i8 } @nitpick_http.http_body_length() {
entry:
  %r = alloca i32, align 4
  %calltmp = call i32 @nitpick_http_response_length()
  store i32 %calltmp, ptr %r, align 4
  %r1 = load i32, ptr %r, align 4
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %r1, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_http.http_response_headers() {
entry:
  %calltmp = call i64 @nitpick_http_response_headers()
  %0 = inttoptr i64 %calltmp to ptr
  %str_result = call ptr @npk_string_from_cstr_simple(ptr %0)
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %str_result, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_http.http_error() {
entry:
  %calltmp = call i64 @nitpick_http_error()
  %0 = inttoptr i64 %calltmp to ptr
  %str_result = call ptr @npk_string_from_cstr_simple(ptr %0)
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %str_result, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_http.http_url_encode(ptr %str) {
entry:
  %calltmp = call i64 @nitpick_http_url_encode(ptr %str)
  %calltmp1 = call i64 @nitpick_http_last_result()
  %0 = inttoptr i64 %calltmp1 to ptr
  %str_result = call ptr @npk_string_from_cstr_simple(ptr %0)
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %str_result, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

declare i32 @nitpick_http_init()

declare ptr @nitpick_http_cleanup()

declare ptr @nitpick_http_set_header(ptr)

declare ptr @nitpick_http_clear_headers()

declare ptr @nitpick_http_set_timeout(i32)

declare ptr @nitpick_http_set_follow_redirects(i32)

declare ptr @nitpick_http_set_user_agent(ptr)

declare i32 @nitpick_http_get(ptr)

declare i32 @nitpick_http_post(ptr, ptr)

declare i32 @nitpick_http_put(ptr, ptr)

declare i32 @nitpick_http_delete(ptr)

declare i32 @nitpick_http_patch(ptr, ptr)

declare i32 @nitpick_http_head(ptr)

declare i32 @nitpick_http_status()

declare i64 @nitpick_http_response_body()

declare i32 @nitpick_http_response_length()

declare i64 @nitpick_http_response_headers()

declare i64 @nitpick_http_error()

declare ptr @nitpick_http_enable_ollama_stream(i32)

declare i64 @nitpick_http_get_ollama_content()

declare i64 @nitpick_http_get_ollama_tool()

declare i64 @nitpick_http_get_ollama_arg()

declare i32 @nitpick_http_get_ollama_conf()

declare i64 @nitpick_http_url_encode(ptr)

declare i64 @nitpick_http_last_result()

declare ptr @npk_string_from_cstr_simple(ptr)

define linkonce_odr i32 @__nitpick_http_init() {
entry:
  ret i32 0
}

define linkonce_odr { %struct.NIL, ptr, i8 } @client._split_and_set_headers(ptr %headers_pipe) {
entry:
  %len = alloca i64, align 8
  %str = load %struct.NpkString, ptr %headers_pipe, align 8
  %length = extractvalue %struct.NpkString %str, 1
  store i64 %length, ptr %len, align 4
  %start = alloca i64, align 8
  store i64 0, ptr %start, align 4
  %sep = alloca i64, align 8
  store i64 0, ptr %sep, align 4
  %rest = alloca ptr, align 8
  store ptr @.str.221, ptr %rest, align 8
  %header = alloca ptr, align 8
  store ptr @.str.223, ptr %header, align 8
  %calltmp = call { %struct.NIL, ptr, i8 } @nitpick_http.http_clear_headers()
  br label %whilecond

whilecond:                                        ; preds = %ifcont19, %entry
  %start1 = load i64, ptr %start, align 4
  %len2 = load i64, ptr %len, align 4
  %lttmp = icmp slt i64 %start1, %len2
  %whilecond3 = icmp ne i1 %lttmp, false
  br i1 %whilecond3, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %start4 = load i64, ptr %start, align 4
  %len5 = load i64, ptr %len, align 4
  %substr_result = call ptr @npk_string_substring_simple(ptr %headers_pipe, i64 %start4, i64 %len5)
  store ptr %substr_result, ptr %rest, align 8
  %rest6 = load ptr, ptr %rest, align 8
  %index_of_result = call i64 @npk_string_index_of_simple(ptr %rest6, ptr @.str.225)
  store i64 %index_of_result, ptr %sep, align 4
  %sep7 = load i64, ptr %sep, align 4
  %lttmp8 = icmp slt i64 %sep7, 0
  %ifcond = icmp ne i1 %lttmp8, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %whilebody
  br label %afterwhile

afterbreak:                                       ; No predecessors!
  br label %ifcont

ifcont:                                           ; preds = %afterbreak, %whilebody
  %rest9 = load ptr, ptr %rest, align 8
  %sep10 = load i64, ptr %sep, align 4
  %substr_result11 = call ptr @npk_string_substring_simple(ptr %rest9, i64 0, i64 %sep10)
  store ptr %substr_result11, ptr %header, align 8
  %header12 = load ptr, ptr %header, align 8
  %str13 = load %struct.NpkString, ptr %header12, align 8
  %length14 = extractvalue %struct.NpkString %str13, 1
  %gttmp = icmp sgt i64 %length14, 0
  %ifcond15 = icmp ne i1 %gttmp, false
  br i1 %ifcond15, label %then16, label %ifcont19

then16:                                           ; preds = %ifcont
  %header17 = load ptr, ptr %header, align 8
  %calltmp18 = call { %struct.NIL, ptr, i8 } @nitpick_http.http_set_header(ptr %header17)
  br label %ifcont19

ifcont19:                                         ; preds = %then16, %ifcont
  %start20 = load i64, ptr %start, align 4
  %sep21 = load i64, ptr %sep, align 4
  %addtmp = add i64 %start20, %sep21
  %addtmp22 = add i64 %addtmp, 1
  store i64 %addtmp22, ptr %start, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %then, %whilecond
  ret { %struct.NIL, ptr, i8 } zeroinitializer
}

define linkonce_odr { i32, ptr, i8 } @client.client_init() {
entry:
  %calltmp = call { i32, ptr, i8 } @nitpick_http.http_init()
  %raw.value = extractvalue { i32, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %raw.value, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error
}

define linkonce_odr { %struct.NIL, ptr, i8 } @client.client_cleanup() {
entry:
  %calltmp = call { %struct.NIL, ptr, i8 } @nitpick_http.http_cleanup()
  %raw.value = extractvalue { %struct.NIL, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { %struct.NIL, ptr, i8 } undef, %struct.NIL %raw.value, 0
  %result.err = insertvalue { %struct.NIL, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { %struct.NIL, ptr, i8 } %result.err, i8 0, 2
  ret { %struct.NIL, ptr, i8 } %result.is_error
}

define linkonce_odr { %Response, ptr, i8 } @client.client_send(%Request %req) {
entry:
  %req_alloca = alloca %Request, align 8
  store %Request %req, ptr %req_alloca, align 8
  %res = alloca %Response, align 8
  %success = alloca i32, align 4
  store i32 0, ptr %success, align 4
  %req1 = load %Request, ptr %req_alloca, align 8
  %headers_pipe = extractvalue %Request %req1, 2
  %calltmp = call { %struct.NIL, ptr, i8 } @client._split_and_set_headers(ptr %headers_pipe)
  %req2 = load %Request, ptr %req_alloca, align 8
  %timeout = extractvalue %Request %req2, 4
  %calltmp3 = call { %struct.NIL, ptr, i8 } @nitpick_http.http_set_timeout(i32 %timeout)
  %req4 = load %Request, ptr %req_alloca, align 8
  %follow_redirects = extractvalue %Request %req4, 5
  %calltmp5 = call { %struct.NIL, ptr, i8 } @nitpick_http.http_follow_redirects(i32 %follow_redirects)
  %req6 = load %Request, ptr %req_alloca, align 8
  %method = extractvalue %Request %req6, 0
  %str1 = load %struct.NpkString, ptr %method, align 8
  %str2 = load %struct.NpkString, ptr @.str.227, align 8
  %equals = call i1 @npk_string_equals(%struct.NpkString %str1, %struct.NpkString %str2)
  %ifcond = icmp ne i1 %equals, false
  br i1 %ifcond, label %then, label %else

then:                                             ; preds = %entry
  %req7 = load %Request, ptr %req_alloca, align 8
  %url = extractvalue %Request %req7, 1
  %calltmp8 = call { i32, ptr, i8 } @nitpick_http.http_get(ptr %url)
  %raw.value = extractvalue { i32, ptr, i8 } %calltmp8, 0
  store i32 %raw.value, ptr %success, align 4
  br label %ifcont82

else:                                             ; preds = %entry
  %req9 = load %Request, ptr %req_alloca, align 8
  %method10 = extractvalue %Request %req9, 0
  %str111 = load %struct.NpkString, ptr %method10, align 8
  %str212 = load %struct.NpkString, ptr @.str.229, align 8
  %equals13 = call i1 @npk_string_equals(%struct.NpkString %str111, %struct.NpkString %str212)
  %ifcond14 = icmp ne i1 %equals13, false
  br i1 %ifcond14, label %then15, label %else21

then15:                                           ; preds = %else
  %req16 = load %Request, ptr %req_alloca, align 8
  %url17 = extractvalue %Request %req16, 1
  %req18 = load %Request, ptr %req_alloca, align 8
  %body = extractvalue %Request %req18, 3
  %calltmp19 = call { i32, ptr, i8 } @nitpick_http.http_post(ptr %url17, ptr %body)
  %raw.value20 = extractvalue { i32, ptr, i8 } %calltmp19, 0
  store i32 %raw.value20, ptr %success, align 4
  br label %ifcont81

else21:                                           ; preds = %else
  %req22 = load %Request, ptr %req_alloca, align 8
  %method23 = extractvalue %Request %req22, 0
  %str124 = load %struct.NpkString, ptr %method23, align 8
  %str225 = load %struct.NpkString, ptr @.str.231, align 8
  %equals26 = call i1 @npk_string_equals(%struct.NpkString %str124, %struct.NpkString %str225)
  %ifcond27 = icmp ne i1 %equals26, false
  br i1 %ifcond27, label %then28, label %else35

then28:                                           ; preds = %else21
  %req29 = load %Request, ptr %req_alloca, align 8
  %url30 = extractvalue %Request %req29, 1
  %req31 = load %Request, ptr %req_alloca, align 8
  %body32 = extractvalue %Request %req31, 3
  %calltmp33 = call { i32, ptr, i8 } @nitpick_http.http_put(ptr %url30, ptr %body32)
  %raw.value34 = extractvalue { i32, ptr, i8 } %calltmp33, 0
  store i32 %raw.value34, ptr %success, align 4
  br label %ifcont80

else35:                                           ; preds = %else21
  %req36 = load %Request, ptr %req_alloca, align 8
  %method37 = extractvalue %Request %req36, 0
  %str138 = load %struct.NpkString, ptr %method37, align 8
  %str239 = load %struct.NpkString, ptr @.str.233, align 8
  %equals40 = call i1 @npk_string_equals(%struct.NpkString %str138, %struct.NpkString %str239)
  %ifcond41 = icmp ne i1 %equals40, false
  br i1 %ifcond41, label %then42, label %else47

then42:                                           ; preds = %else35
  %req43 = load %Request, ptr %req_alloca, align 8
  %url44 = extractvalue %Request %req43, 1
  %calltmp45 = call { i32, ptr, i8 } @nitpick_http.http_delete(ptr %url44)
  %raw.value46 = extractvalue { i32, ptr, i8 } %calltmp45, 0
  store i32 %raw.value46, ptr %success, align 4
  br label %ifcont79

else47:                                           ; preds = %else35
  %req48 = load %Request, ptr %req_alloca, align 8
  %method49 = extractvalue %Request %req48, 0
  %str150 = load %struct.NpkString, ptr %method49, align 8
  %str251 = load %struct.NpkString, ptr @.str.235, align 8
  %equals52 = call i1 @npk_string_equals(%struct.NpkString %str150, %struct.NpkString %str251)
  %ifcond53 = icmp ne i1 %equals52, false
  br i1 %ifcond53, label %then54, label %else61

then54:                                           ; preds = %else47
  %req55 = load %Request, ptr %req_alloca, align 8
  %url56 = extractvalue %Request %req55, 1
  %req57 = load %Request, ptr %req_alloca, align 8
  %body58 = extractvalue %Request %req57, 3
  %calltmp59 = call { i32, ptr, i8 } @nitpick_http.http_patch(ptr %url56, ptr %body58)
  %raw.value60 = extractvalue { i32, ptr, i8 } %calltmp59, 0
  store i32 %raw.value60, ptr %success, align 4
  br label %ifcont78

else61:                                           ; preds = %else47
  %req62 = load %Request, ptr %req_alloca, align 8
  %method63 = extractvalue %Request %req62, 0
  %str164 = load %struct.NpkString, ptr %method63, align 8
  %str265 = load %struct.NpkString, ptr @.str.237, align 8
  %equals66 = call i1 @npk_string_equals(%struct.NpkString %str164, %struct.NpkString %str265)
  %ifcond67 = icmp ne i1 %equals66, false
  br i1 %ifcond67, label %then68, label %else73

then68:                                           ; preds = %else61
  %req69 = load %Request, ptr %req_alloca, align 8
  %url70 = extractvalue %Request %req69, 1
  %calltmp71 = call { i32, ptr, i8 } @nitpick_http.http_head(ptr %url70)
  %raw.value72 = extractvalue { i32, ptr, i8 } %calltmp71, 0
  store i32 %raw.value72, ptr %success, align 4
  br label %ifcont

else73:                                           ; preds = %else61
  %req74 = load %Request, ptr %req_alloca, align 8
  %url75 = extractvalue %Request %req74, 1
  %calltmp76 = call { i32, ptr, i8 } @nitpick_http.http_get(ptr %url75)
  %raw.value77 = extractvalue { i32, ptr, i8 } %calltmp76, 0
  store i32 %raw.value77, ptr %success, align 4
  br label %ifcont

ifcont:                                           ; preds = %else73, %then68
  br label %ifcont78

ifcont78:                                         ; preds = %ifcont, %then54
  br label %ifcont79

ifcont79:                                         ; preds = %ifcont78, %then42
  br label %ifcont80

ifcont80:                                         ; preds = %ifcont79, %then28
  br label %ifcont81

ifcont81:                                         ; preds = %ifcont80, %then15
  br label %ifcont82

ifcont82:                                         ; preds = %ifcont81, %then
  %calltmp83 = call { i32, ptr, i8 } @nitpick_http.http_status()
  %raw.value84 = extractvalue { i32, ptr, i8 } %calltmp83, 0
  %status.ptr = getelementptr inbounds nuw %Response, ptr %res, i32 0, i32 0
  store i32 %raw.value84, ptr %status.ptr, align 4
  %calltmp85 = call { ptr, ptr, i8 } @nitpick_http.http_body()
  %raw.value86 = extractvalue { ptr, ptr, i8 } %calltmp85, 0
  %body.ptr = getelementptr inbounds nuw %Response, ptr %res, i32 0, i32 2
  store ptr %raw.value86, ptr %body.ptr, align 8
  %calltmp87 = call { ptr, ptr, i8 } @nitpick_http.http_response_headers()
  %raw.value88 = extractvalue { ptr, ptr, i8 } %calltmp87, 0
  %headers.ptr = getelementptr inbounds nuw %Response, ptr %res, i32 0, i32 1
  store ptr %raw.value88, ptr %headers.ptr, align 8
  %calltmp89 = call { ptr, ptr, i8 } @nitpick_http.http_error()
  %raw.value90 = extractvalue { ptr, ptr, i8 } %calltmp89, 0
  %error.ptr = getelementptr inbounds nuw %Response, ptr %res, i32 0, i32 3
  store ptr %raw.value90, ptr %error.ptr, align 8
  %res91 = load %Response, ptr %res, align 8
  %result.val = insertvalue { %Response, ptr, i8 } undef, %Response %res91, 0
  %result.err = insertvalue { %Response, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { %Response, ptr, i8 } %result.err, i8 0, 2
  ret { %Response, ptr, i8 } %result.is_error
}

define linkonce_odr { %Response, ptr, i8 } @client.Client_get(ptr %url) {
entry:
  %req = alloca %Request, align 8
  %calltmp = call { %Request, ptr, i8 } @types.Request_create(ptr @.str.239, ptr %url)
  %raw.value = extractvalue { %Request, ptr, i8 } %calltmp, 0
  store %Request %raw.value, ptr %req, align 8
  %req1 = load %Request, ptr %req, align 8
  %calltmp2 = call { %Response, ptr, i8 } @client.client_send(%Request %req1)
  %raw.value3 = extractvalue { %Response, ptr, i8 } %calltmp2, 0
  %result.val = insertvalue { %Response, ptr, i8 } undef, %Response %raw.value3, 0
  %result.err = insertvalue { %Response, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { %Response, ptr, i8 } %result.err, i8 0, 2
  ret { %Response, ptr, i8 } %result.is_error
}

define linkonce_odr { %Response, ptr, i8 } @client.Client_post(ptr %url, ptr %body) {
entry:
  %req = alloca %Request, align 8
  %calltmp = call { %Request, ptr, i8 } @types.Request_create(ptr @.str.241, ptr %url)
  %raw.value = extractvalue { %Request, ptr, i8 } %calltmp, 0
  store %Request %raw.value, ptr %req, align 8
  %req1 = load %Request, ptr %req, align 8
  %calltmp2 = call { %Request, ptr, i8 } @types.Request_set_body(%Request %req1, ptr %body)
  %raw.value3 = extractvalue { %Request, ptr, i8 } %calltmp2, 0
  store %Request %raw.value3, ptr %req, align 8
  %req4 = load %Request, ptr %req, align 8
  %calltmp5 = call { %Response, ptr, i8 } @client.client_send(%Request %req4)
  %raw.value6 = extractvalue { %Response, ptr, i8 } %calltmp5, 0
  %result.val = insertvalue { %Response, ptr, i8 } undef, %Response %raw.value6, 0
  %result.err = insertvalue { %Response, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { %Response, ptr, i8 } %result.err, i8 0, 2
  ret { %Response, ptr, i8 } %result.is_error
}

define linkonce_odr i32 @__client_init() {
entry:
  ret i32 0
}

define linkonce_odr { %Response, ptr, i8 } @dispatcher.dispatch_request(%Request %req) {
entry:
  %req_alloca = alloca %Request, align 8
  store %Request %req, ptr %req_alloca, align 8
  %calltmp = call { i32, ptr, i8 } @client.client_init()
  %res = alloca %Response, align 8
  %req1 = load %Request, ptr %req_alloca, align 8
  %calltmp2 = call { %Response, ptr, i8 } @client.client_send(%Request %req1)
  %raw.value = extractvalue { %Response, ptr, i8 } %calltmp2, 0
  store %Response %raw.value, ptr %res, align 8
  %calltmp3 = call { %struct.NIL, ptr, i8 } @client.client_cleanup()
  %res4 = load %Response, ptr %res, align 8
  %result.val = insertvalue { %Response, ptr, i8 } undef, %Response %res4, 0
  %result.err = insertvalue { %Response, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { %Response, ptr, i8 } %result.err, i8 0, 2
  ret { %Response, ptr, i8 } %result.is_error
}

define linkonce_odr i32 @__dispatcher_init() {
entry:
  ret i32 0
}

define linkonce_odr { ptr, ptr, i8 } @formatter.ansi_color(ptr %text, ptr %code) {
entry:
  %esc = alloca ptr, align 8
  %char_str = call ptr @npk_string_from_char_simple(i8 27)
  store ptr %char_str, ptr %esc, align 8
  %result = alloca ptr, align 8
  %esc1 = load ptr, ptr %esc, align 8
  %concat_str = call ptr @npk_string_concat_simple(ptr %esc1, ptr @.str.243)
  store ptr %concat_str, ptr %result, align 8
  %result2 = load ptr, ptr %result, align 8
  %concat_str3 = call ptr @npk_string_concat_simple(ptr %result2, ptr %code)
  store ptr %concat_str3, ptr %result, align 8
  %result4 = load ptr, ptr %result, align 8
  %concat_str5 = call ptr @npk_string_concat_simple(ptr %result4, ptr @.str.245)
  store ptr %concat_str5, ptr %result, align 8
  %result6 = load ptr, ptr %result, align 8
  %concat_str7 = call ptr @npk_string_concat_simple(ptr %result6, ptr %text)
  store ptr %concat_str7, ptr %result, align 8
  %result8 = load ptr, ptr %result, align 8
  %esc9 = load ptr, ptr %esc, align 8
  %concat_str10 = call ptr @npk_string_concat_simple(ptr %result8, ptr %esc9)
  store ptr %concat_str10, ptr %result, align 8
  %result11 = load ptr, ptr %result, align 8
  %concat_str12 = call ptr @npk_string_concat_simple(ptr %result11, ptr @.str.247)
  store ptr %concat_str12, ptr %result, align 8
  %result13 = load ptr, ptr %result, align 8
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %result13, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @formatter.fmt_hr(i32 %width, ptr %ch) {
entry:
  %width.addr = alloca i32, align 4
  store i32 %width, ptr %width.addr, align 4
  %result = alloca ptr, align 8
  store ptr @.str.249, ptr %result, align 8
  %i = alloca i32, align 4
  store i32 0, ptr %i, align 4
  br label %whilecond

whilecond:                                        ; preds = %whilebody, %entry
  %i1 = load i32, ptr %i, align 4
  %width2 = load i32, ptr %width.addr, align 4
  %lttmp = icmp slt i32 %i1, %width2
  %whilecond3 = icmp ne i1 %lttmp, false
  br i1 %whilecond3, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %result4 = load ptr, ptr %result, align 8
  %concat_str = call ptr @npk_string_concat_simple(ptr %result4, ptr %ch)
  store ptr %concat_str, ptr %result, align 8
  %i5 = load i32, ptr %i, align 4
  %addtmp = add i32 %i5, 1
  store i32 %addtmp, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %result6 = load ptr, ptr %result, align 8
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %result6, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @formatter.fmt_bright_green(ptr %text) {
entry:
  %calltmp = call { ptr, ptr, i8 } @formatter.ansi_color(ptr %text, ptr @.str.251)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %raw.value, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @formatter.fmt_bright_red(ptr %text) {
entry:
  %calltmp = call { ptr, ptr, i8 } @formatter.ansi_color(ptr %text, ptr @.str.253)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %raw.value, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @formatter.fmt_cyan(ptr %text) {
entry:
  %calltmp = call { ptr, ptr, i8 } @formatter.ansi_color(ptr %text, ptr @.str.255)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %raw.value, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @formatter.fmt_yellow(ptr %text) {
entry:
  %calltmp = call { ptr, ptr, i8 } @formatter.ansi_color(ptr %text, ptr @.str.257)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %raw.value, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @formatter.fmt_gray(ptr %text) {
entry:
  %calltmp = call { ptr, ptr, i8 } @formatter.ansi_color(ptr %text, ptr @.str.259)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %raw.value, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @formatter.fmt_bold(ptr %text) {
entry:
  %calltmp = call { ptr, ptr, i8 } @formatter.ansi_color(ptr %text, ptr @.str.261)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %raw.value, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @formatter.fmt_dim(ptr %text) {
entry:
  %calltmp = call { ptr, ptr, i8 } @formatter.ansi_color(ptr %text, ptr @.str.263)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %raw.value, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @formatter.fmt_blue(ptr %text) {
entry:
  %calltmp = call { ptr, ptr, i8 } @formatter.ansi_color(ptr %text, ptr @.str.265)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %raw.value, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @formatter.fmt_magenta(ptr %text) {
entry:
  %calltmp = call { ptr, ptr, i8 } @formatter.ansi_color(ptr %text, ptr @.str.267)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %raw.value, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @formatter.fmt_red(ptr %text) {
entry:
  %calltmp = call { ptr, ptr, i8 } @formatter.ansi_color(ptr %text, ptr @.str.269)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %raw.value, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { %struct.NIL, ptr, i8 } @formatter.format_response(%Response %res) {
entry:
  %res_alloca = alloca %Response, align 8
  store %Response %res, ptr %res_alloca, align 8
  %str_data = load ptr, ptr @.str.271, align 8
  %print_call = call i64 @npk_print_cstr(ptr %str_data)
  %calltmp = call { ptr, ptr, i8 } @formatter.fmt_hr(i32 50, ptr @.str.273)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  %str_struct = load %struct.NpkString, ptr %raw.value, align 8
  %str_data1 = extractvalue %struct.NpkString %str_struct, 0
  %print_call2 = call i64 @npk_print_cstr(ptr %str_data1)
  %str_data3 = load ptr, ptr @.str.275, align 8
  %print_call4 = call i64 @npk_print_cstr(ptr %str_data3)
  %status_str = alloca ptr, align 8
  %res5 = load %Response, ptr %res_alloca, align 8
  %status = extractvalue %Response %res5, 0
  %val_i64 = sext i32 %status to i64
  %from_int_result = call ptr @npk_string_from_int_simple(i64 %val_i64)
  store ptr %from_int_result, ptr %status_str, align 8
  %status_color = alloca ptr, align 8
  store ptr @.str.277, ptr %status_color, align 8
  %status.ptr = getelementptr inbounds nuw %Response, ptr %res_alloca, i32 0, i32 0
  %status6 = load i32, ptr %status.ptr, align 4
  %getmp = icmp sge i32 %status6, 200
  %ifcond = icmp ne i1 %getmp, false
  br i1 %ifcond, label %then, label %else27

then:                                             ; preds = %entry
  %status.ptr7 = getelementptr inbounds nuw %Response, ptr %res_alloca, i32 0, i32 0
  %status8 = load i32, ptr %status.ptr7, align 4
  %lttmp = icmp slt i32 %status8, 300
  %ifcond9 = icmp ne i1 %lttmp, false
  br i1 %ifcond9, label %then10, label %else

then10:                                           ; preds = %then
  %status_str11 = load ptr, ptr %status_str, align 8
  %calltmp12 = call { ptr, ptr, i8 } @formatter.fmt_bright_green(ptr %status_str11)
  %raw.value13 = extractvalue { ptr, ptr, i8 } %calltmp12, 0
  store ptr %raw.value13, ptr %status_color, align 8
  br label %ifcont26

else:                                             ; preds = %then
  %status.ptr14 = getelementptr inbounds nuw %Response, ptr %res_alloca, i32 0, i32 0
  %status15 = load i32, ptr %status.ptr14, align 4
  %getmp16 = icmp sge i32 %status15, 400
  %ifcond17 = icmp ne i1 %getmp16, false
  br i1 %ifcond17, label %then18, label %else22

then18:                                           ; preds = %else
  %status_str19 = load ptr, ptr %status_str, align 8
  %calltmp20 = call { ptr, ptr, i8 } @formatter.fmt_bright_red(ptr %status_str19)
  %raw.value21 = extractvalue { ptr, ptr, i8 } %calltmp20, 0
  store ptr %raw.value21, ptr %status_color, align 8
  br label %ifcont

else22:                                           ; preds = %else
  %status_str23 = load ptr, ptr %status_str, align 8
  %calltmp24 = call { ptr, ptr, i8 } @formatter.fmt_yellow(ptr %status_str23)
  %raw.value25 = extractvalue { ptr, ptr, i8 } %calltmp24, 0
  store ptr %raw.value25, ptr %status_color, align 8
  br label %ifcont

ifcont:                                           ; preds = %else22, %then18
  br label %ifcont26

ifcont26:                                         ; preds = %ifcont, %then10
  br label %ifcont31

else27:                                           ; preds = %entry
  %status_str28 = load ptr, ptr %status_str, align 8
  %calltmp29 = call { ptr, ptr, i8 } @formatter.fmt_yellow(ptr %status_str28)
  %raw.value30 = extractvalue { ptr, ptr, i8 } %calltmp29, 0
  store ptr %raw.value30, ptr %status_color, align 8
  br label %ifcont31

ifcont31:                                         ; preds = %else27, %ifcont26
  %calltmp32 = call { ptr, ptr, i8 } @formatter.fmt_bold(ptr @.str.279)
  %raw.value33 = extractvalue { ptr, ptr, i8 } %calltmp32, 0
  %str_struct34 = load %struct.NpkString, ptr %raw.value33, align 8
  %str_data35 = extractvalue %struct.NpkString %str_struct34, 0
  %print_call36 = call i64 @npk_print_cstr(ptr %str_data35)
  %status_color37 = load ptr, ptr %status_color, align 8
  %str_struct38 = load %struct.NpkString, ptr %status_color37, align 8
  %str_data39 = extractvalue %struct.NpkString %str_struct38, 0
  %print_call40 = call i64 @npk_print_cstr(ptr %str_data39)
  %str_data41 = load ptr, ptr @.str.281, align 8
  %print_call42 = call i64 @npk_print_cstr(ptr %str_data41)
  %res43 = load %Response, ptr %res_alloca, align 8
  %error = extractvalue %Response %res43, 3
  %str = load %struct.NpkString, ptr %error, align 8
  %length = extractvalue %struct.NpkString %str, 1
  %gttmp = icmp sgt i64 %length, 0
  %ifcond44 = icmp ne i1 %gttmp, false
  br i1 %ifcond44, label %then45, label %ifcont60

then45:                                           ; preds = %ifcont31
  %calltmp46 = call { ptr, ptr, i8 } @formatter.fmt_red(ptr @.str.283)
  %raw.value47 = extractvalue { ptr, ptr, i8 } %calltmp46, 0
  %calltmp48 = call { ptr, ptr, i8 } @formatter.fmt_bold(ptr %raw.value47)
  %raw.value49 = extractvalue { ptr, ptr, i8 } %calltmp48, 0
  %str_struct50 = load %struct.NpkString, ptr %raw.value49, align 8
  %str_data51 = extractvalue %struct.NpkString %str_struct50, 0
  %print_call52 = call i64 @npk_print_cstr(ptr %str_data51)
  %res53 = load %Response, ptr %res_alloca, align 8
  %error54 = extractvalue %Response %res53, 3
  %str_struct55 = load %struct.NpkString, ptr %error54, align 8
  %str_data56 = extractvalue %struct.NpkString %str_struct55, 0
  %print_call57 = call i64 @npk_print_cstr(ptr %str_data56)
  %str_data58 = load ptr, ptr @.str.285, align 8
  %print_call59 = call i64 @npk_print_cstr(ptr %str_data58)
  br label %ifcont60

ifcont60:                                         ; preds = %then45, %ifcont31
  %calltmp61 = call { ptr, ptr, i8 } @formatter.fmt_blue(ptr @.str.287)
  %raw.value62 = extractvalue { ptr, ptr, i8 } %calltmp61, 0
  %calltmp63 = call { ptr, ptr, i8 } @formatter.fmt_bold(ptr %raw.value62)
  %raw.value64 = extractvalue { ptr, ptr, i8 } %calltmp63, 0
  %str_struct65 = load %struct.NpkString, ptr %raw.value64, align 8
  %str_data66 = extractvalue %struct.NpkString %str_struct65, 0
  %print_call67 = call i64 @npk_print_cstr(ptr %str_data66)
  %num_headers = alloca i64, align 8
  %res68 = load %Response, ptr %res_alloca, align 8
  %headers = extractvalue %Response %res68, 1
  %calltmp69 = call { i64, ptr, i8 } @nitpick_str.Str_line_count(ptr %headers)
  %raw.value70 = extractvalue { i64, ptr, i8 } %calltmp69, 0
  store i64 %raw.value70, ptr %num_headers, align 4
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  br label %whilecond

whilecond:                                        ; preds = %ifcont131, %ifcont60
  %i71 = load i64, ptr %i, align 4
  %num_headers72 = load i64, ptr %num_headers, align 4
  %lttmp73 = icmp slt i64 %i71, %num_headers72
  %whilecond74 = icmp ne i1 %lttmp73, false
  br i1 %whilecond74, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %line = alloca ptr, align 8
  %res75 = load %Response, ptr %res_alloca, align 8
  %headers76 = extractvalue %Response %res75, 1
  %i77 = load i64, ptr %i, align 4
  %calltmp78 = call { ptr, ptr, i8 } @nitpick_str.Str_token(ptr %headers76, ptr @.str.289, i64 %i77)
  %raw.value79 = extractvalue { ptr, ptr, i8 } %calltmp78, 0
  store ptr %raw.value79, ptr %line, align 8
  %line80 = load ptr, ptr %line, align 8
  %trim_result = call ptr @npk_string_trim_simple(ptr %line80)
  %str81 = load %struct.NpkString, ptr %trim_result, align 8
  %length82 = extractvalue %struct.NpkString %str81, 1
  %gttmp83 = icmp sgt i64 %length82, 0
  %ifcond84 = icmp ne i1 %gttmp83, false
  br i1 %ifcond84, label %then85, label %ifcont131

then85:                                           ; preds = %whilebody
  %colon = alloca i64, align 8
  %line86 = load ptr, ptr %line, align 8
  %index_of_result = call i64 @npk_string_index_of_simple(ptr %line86, ptr @.str.291)
  store i64 %index_of_result, ptr %colon, align 4
  %colon87 = load i64, ptr %colon, align 4
  %gttmp88 = icmp sgt i64 %colon87, 0
  %ifcond89 = icmp ne i1 %gttmp88, false
  br i1 %ifcond89, label %then90, label %else118

then90:                                           ; preds = %then85
  %key = alloca ptr, align 8
  %line91 = load ptr, ptr %line, align 8
  %calltmp92 = call { ptr, ptr, i8 } @nitpick_str.Str_before(ptr %line91, ptr @.str.293)
  %raw.value93 = extractvalue { ptr, ptr, i8 } %calltmp92, 0
  store ptr %raw.value93, ptr %key, align 8
  %val = alloca ptr, align 8
  %line94 = load ptr, ptr %line, align 8
  %calltmp95 = call { ptr, ptr, i8 } @nitpick_str.Str_after(ptr %line94, ptr @.str.295)
  %raw.value96 = extractvalue { ptr, ptr, i8 } %calltmp95, 0
  store ptr %raw.value96, ptr %val, align 8
  %str_data97 = load ptr, ptr @.str.297, align 8
  %print_call98 = call i64 @npk_print_cstr(ptr %str_data97)
  %key99 = load ptr, ptr %key, align 8
  %trim_result100 = call ptr @npk_string_trim_simple(ptr %key99)
  %calltmp101 = call { ptr, ptr, i8 } @formatter.fmt_cyan(ptr %trim_result100)
  %raw.value102 = extractvalue { ptr, ptr, i8 } %calltmp101, 0
  %str_struct103 = load %struct.NpkString, ptr %raw.value102, align 8
  %str_data104 = extractvalue %struct.NpkString %str_struct103, 0
  %print_call105 = call i64 @npk_print_cstr(ptr %str_data104)
  %calltmp106 = call { ptr, ptr, i8 } @formatter.fmt_dim(ptr @.str.299)
  %raw.value107 = extractvalue { ptr, ptr, i8 } %calltmp106, 0
  %str_struct108 = load %struct.NpkString, ptr %raw.value107, align 8
  %str_data109 = extractvalue %struct.NpkString %str_struct108, 0
  %print_call110 = call i64 @npk_print_cstr(ptr %str_data109)
  %val111 = load ptr, ptr %val, align 8
  %trim_result112 = call ptr @npk_string_trim_simple(ptr %val111)
  %str_struct113 = load %struct.NpkString, ptr %trim_result112, align 8
  %str_data114 = extractvalue %struct.NpkString %str_struct113, 0
  %print_call115 = call i64 @npk_print_cstr(ptr %str_data114)
  %str_data116 = load ptr, ptr @.str.301, align 8
  %print_call117 = call i64 @npk_print_cstr(ptr %str_data116)
  br label %ifcont130

else118:                                          ; preds = %then85
  %str_data119 = load ptr, ptr @.str.303, align 8
  %print_call120 = call i64 @npk_print_cstr(ptr %str_data119)
  %line121 = load ptr, ptr %line, align 8
  %trim_result122 = call ptr @npk_string_trim_simple(ptr %line121)
  %calltmp123 = call { ptr, ptr, i8 } @formatter.fmt_dim(ptr %trim_result122)
  %raw.value124 = extractvalue { ptr, ptr, i8 } %calltmp123, 0
  %str_struct125 = load %struct.NpkString, ptr %raw.value124, align 8
  %str_data126 = extractvalue %struct.NpkString %str_struct125, 0
  %print_call127 = call i64 @npk_print_cstr(ptr %str_data126)
  %str_data128 = load ptr, ptr @.str.305, align 8
  %print_call129 = call i64 @npk_print_cstr(ptr %str_data128)
  br label %ifcont130

ifcont130:                                        ; preds = %else118, %then90
  br label %ifcont131

ifcont131:                                        ; preds = %ifcont130, %whilebody
  %i132 = load i64, ptr %i, align 4
  %addtmp = add i64 %i132, 1
  store i64 %addtmp, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %str_data133 = load ptr, ptr @.str.307, align 8
  %print_call134 = call i64 @npk_print_cstr(ptr %str_data133)
  %calltmp135 = call { ptr, ptr, i8 } @formatter.fmt_magenta(ptr @.str.309)
  %raw.value136 = extractvalue { ptr, ptr, i8 } %calltmp135, 0
  %calltmp137 = call { ptr, ptr, i8 } @formatter.fmt_bold(ptr %raw.value136)
  %raw.value138 = extractvalue { ptr, ptr, i8 } %calltmp137, 0
  %str_struct139 = load %struct.NpkString, ptr %raw.value138, align 8
  %str_data140 = extractvalue %struct.NpkString %str_struct139, 0
  %print_call141 = call i64 @npk_print_cstr(ptr %str_data140)
  %is_json = alloca i32, align 4
  store i32 0, ptr %is_json, align 4
  %t_body = alloca ptr, align 8
  %res142 = load %Response, ptr %res_alloca, align 8
  %body = extractvalue %Response %res142, 2
  %trim_result143 = call ptr @npk_string_trim_simple(ptr %body)
  store ptr %trim_result143, ptr %t_body, align 8
  %t_body144 = load ptr, ptr %t_body, align 8
  %str145 = load %struct.NpkString, ptr %t_body144, align 8
  %prefix = load %struct.NpkString, ptr @.str.311, align 8
  %starts_with = call i1 @npk_string_starts_with(%struct.NpkString %str145, %struct.NpkString %prefix)
  %ifcond146 = icmp ne i1 %starts_with, false
  br i1 %ifcond146, label %then147, label %ifcont148

then147:                                          ; preds = %afterwhile
  store i32 1, ptr %is_json, align 4
  br label %ifcont148

ifcont148:                                        ; preds = %then147, %afterwhile
  %t_body149 = load ptr, ptr %t_body, align 8
  %str150 = load %struct.NpkString, ptr %t_body149, align 8
  %prefix151 = load %struct.NpkString, ptr @.str.313, align 8
  %starts_with152 = call i1 @npk_string_starts_with(%struct.NpkString %str150, %struct.NpkString %prefix151)
  %ifcond153 = icmp ne i1 %starts_with152, false
  br i1 %ifcond153, label %then154, label %ifcont155

then154:                                          ; preds = %ifcont148
  store i32 1, ptr %is_json, align 4
  br label %ifcont155

ifcont155:                                        ; preds = %then154, %ifcont148
  %is_json156 = load i32, ptr %is_json, align 4
  %eqtmp = icmp eq i32 %is_json156, 1
  %ifcond157 = icmp ne i1 %eqtmp, false
  br i1 %ifcond157, label %then158, label %else166

then158:                                          ; preds = %ifcont155
  %res159 = load %Response, ptr %res_alloca, align 8
  %body160 = extractvalue %Response %res159, 2
  %calltmp161 = call { ptr, ptr, i8 } @formatter.fmt_yellow(ptr %body160)
  %raw.value162 = extractvalue { ptr, ptr, i8 } %calltmp161, 0
  %str_struct163 = load %struct.NpkString, ptr %raw.value162, align 8
  %str_data164 = extractvalue %struct.NpkString %str_struct163, 0
  %print_call165 = call i64 @npk_print_cstr(ptr %str_data164)
  br label %ifcont172

else166:                                          ; preds = %ifcont155
  %res167 = load %Response, ptr %res_alloca, align 8
  %body168 = extractvalue %Response %res167, 2
  %str_struct169 = load %struct.NpkString, ptr %body168, align 8
  %str_data170 = extractvalue %struct.NpkString %str_struct169, 0
  %print_call171 = call i64 @npk_print_cstr(ptr %str_data170)
  br label %ifcont172

ifcont172:                                        ; preds = %else166, %then158
  %str_data173 = load ptr, ptr @.str.315, align 8
  %print_call174 = call i64 @npk_print_cstr(ptr %str_data173)
  ret { %struct.NIL, ptr, i8 } zeroinitializer
}

declare ptr @npk_string_from_int_simple(i64)

define linkonce_odr i32 @__formatter_init() {
entry:
  ret i32 0
}

define internal { i32, ptr, i8 } @failsafe(i32 %err) {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, ptr %err.addr, align 4
  %err1 = load i32, ptr %err.addr, align 4
  %tbb.cmp.l.err = icmp eq i32 %err1, -2147483648
  %tbb.cmp.anyerr = or i1 %tbb.cmp.l.err, false
  %tbb.cmp.normal = icmp eq i32 %err1, 0
  %tbb.cmp.sticky = select i1 %tbb.cmp.anyerr, i1 false, i1 %tbb.cmp.normal
  %ifcond = icmp ne i1 %tbb.cmp.sticky, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  call void @proc_exit(i32 1)
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  call void @proc_exit(i32 1)
  ret { i32, ptr, i8 } zeroinitializer
}

define internal { ptr, ptr, i8 } @args_load() {
entry:
  %fp = alloca i64, align 8
  %calltmp = call i64 @fopen(ptr @.str.317, ptr @.str.319)
  store i64 %calltmp, ptr %fp, align 4
  %fp1 = load i64, ptr %fp, align 4
  %eqtmp = icmp eq i64 %fp1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { ptr, ptr, i8 } { ptr @.str.321, ptr null, i8 0 }

ifcont:                                           ; preds = %entry
  %result = alloca ptr, align 8
  store ptr @.str.323, ptr %result, align 8
  %current = alloca ptr, align 8
  store ptr @.str.325, ptr %current, align 8
  %c = alloca i32, align 4
  %fp2 = load i64, ptr %fp, align 4
  %calltmp3 = call i32 @fgetc(i64 %fp2)
  store i32 %calltmp3, ptr %c, align 4
  br label %whilecond

whilecond:                                        ; preds = %ifcont25, %ifcont
  %c4 = load i32, ptr %c, align 4
  %getmp = icmp sge i32 %c4, 0
  %whilecond5 = icmp ne i1 %getmp, false
  br i1 %whilecond5, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %c6 = load i32, ptr %c, align 4
  %eqtmp7 = icmp eq i32 %c6, 0
  %ifcond8 = icmp ne i1 %eqtmp7, false
  br i1 %ifcond8, label %then9, label %ifcont17

then9:                                            ; preds = %whilebody
  %current10 = load ptr, ptr %current, align 8
  %str = load %struct.NpkString, ptr %current10, align 8
  %length = extractvalue %struct.NpkString %str, 1
  %gttmp = icmp sgt i64 %length, 0
  %ifcond11 = icmp ne i1 %gttmp, false
  br i1 %ifcond11, label %then12, label %ifcont16

then12:                                           ; preds = %then9
  %result13 = load ptr, ptr %result, align 8
  %current14 = load ptr, ptr %current, align 8
  %concat_str = call ptr @npk_string_concat_simple(ptr %current14, ptr @.str.327)
  %concat_str15 = call ptr @npk_string_concat_simple(ptr %result13, ptr %concat_str)
  store ptr %concat_str15, ptr %result, align 8
  store ptr @.str.329, ptr %current, align 8
  br label %ifcont16

ifcont16:                                         ; preds = %then12, %then9
  br label %ifcont17

ifcont17:                                         ; preds = %ifcont16, %whilebody
  %c18 = load i32, ptr %c, align 4
  %gttmp19 = icmp sgt i32 %c18, 0
  %ifcond20 = icmp ne i1 %gttmp19, false
  br i1 %ifcond20, label %then21, label %ifcont25

then21:                                           ; preds = %ifcont17
  %current22 = load ptr, ptr %current, align 8
  %c23 = load i32, ptr %c, align 4
  %cast.trunc = trunc i32 %c23 to i8
  %char_str = call ptr @npk_string_from_char_simple(i8 %cast.trunc)
  %concat_str24 = call ptr @npk_string_concat_simple(ptr %current22, ptr %char_str)
  store ptr %concat_str24, ptr %current, align 8
  br label %ifcont25

ifcont25:                                         ; preds = %then21, %ifcont17
  %fp26 = load i64, ptr %fp, align 4
  %calltmp27 = call i32 @fgetc(i64 %fp26)
  store i32 %calltmp27, ptr %c, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %current28 = load ptr, ptr %current, align 8
  %str29 = load %struct.NpkString, ptr %current28, align 8
  %length30 = extractvalue %struct.NpkString %str29, 1
  %gttmp31 = icmp sgt i64 %length30, 0
  %ifcond32 = icmp ne i1 %gttmp31, false
  br i1 %ifcond32, label %then33, label %ifcont38

then33:                                           ; preds = %afterwhile
  %result34 = load ptr, ptr %result, align 8
  %current35 = load ptr, ptr %current, align 8
  %concat_str36 = call ptr @npk_string_concat_simple(ptr %current35, ptr @.str.331)
  %concat_str37 = call ptr @npk_string_concat_simple(ptr %result34, ptr %concat_str36)
  store ptr %concat_str37, ptr %result, align 8
  br label %ifcont38

ifcont38:                                         ; preds = %then33, %afterwhile
  %fp39 = load i64, ptr %fp, align 4
  %calltmp40 = call i32 @fclose(i64 %fp39)
  %result41 = load ptr, ptr %result, align 8
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %result41, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define i32 @main(i32 %0, ptr %1) {
entry:
  call void @npk_gc_init(i64 0, i64 0)
  call void @npk_args_init(i32 %0, ptr %1)
  call void @npk_streams_init()
  %args = alloca ptr, align 8
  %calltmp = call { ptr, ptr, i8 } @args_load()
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  store ptr %raw.value, ptr %args, align 8
  %count = alloca i32, align 4
  %args1 = load ptr, ptr %args, align 8
  %calltmp2 = call { i32, ptr, i8 } @nitpick_args.args_count(ptr %args1)
  %raw.value3 = extractvalue { i32, ptr, i8 } %calltmp2, 0
  store i32 %raw.value3, ptr %count, align 4
  %args4 = load ptr, ptr %args, align 8
  %calltmp5 = call { i1, ptr, i8 } @nitpick_args.args_has(ptr %args4, ptr @.str.333)
  %raw.value6 = extractvalue { i1, ptr, i8 } %calltmp5, 0
  %ifcond = icmp ne i1 %raw.value6, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  %str_data = load ptr, ptr @.str.335, align 8
  %print_call = call i64 @npk_print_cstr(ptr %str_data)
  %str_data7 = load ptr, ptr @.str.337, align 8
  %print_call8 = call i64 @npk_print_cstr(ptr %str_data7)
  %str_data9 = load ptr, ptr @.str.339, align 8
  %print_call10 = call i64 @npk_print_cstr(ptr %str_data9)
  %str_data11 = load ptr, ptr @.str.341, align 8
  %print_call12 = call i64 @npk_print_cstr(ptr %str_data11)
  %str_data13 = load ptr, ptr @.str.343, align 8
  %print_call14 = call i64 @npk_print_cstr(ptr %str_data13)
  %str_data15 = load ptr, ptr @.str.345, align 8
  %print_call16 = call i64 @npk_print_cstr(ptr %str_data15)
  %str_data17 = load ptr, ptr @.str.347, align 8
  %print_call18 = call i64 @npk_print_cstr(ptr %str_data17)
  call void @proc_exit(i32 0)
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %args19 = load ptr, ptr %args, align 8
  %calltmp20 = call { i1, ptr, i8 } @nitpick_args.args_has(ptr %args19, ptr @.str.349)
  %raw.value21 = extractvalue { i1, ptr, i8 } %calltmp20, 0
  %ifcond22 = icmp ne i1 %raw.value21, false
  br i1 %ifcond22, label %then23, label %ifcont26

then23:                                           ; preds = %ifcont
  %str_data24 = load ptr, ptr @.str.351, align 8
  %print_call25 = call i64 @npk_print_cstr(ptr %str_data24)
  call void @proc_exit(i32 0)
  br label %ifcont26

ifcont26:                                         ; preds = %then23, %ifcont
  %count27 = load i32, ptr %count, align 4
  %lttmp = icmp slt i32 %count27, 1
  %ifcond28 = icmp ne i1 %lttmp, false
  br i1 %ifcond28, label %then29, label %ifcont34

then29:                                           ; preds = %ifcont26
  %str_data30 = load ptr, ptr @.str.353, align 8
  %print_call31 = call i64 @npk_print_cstr(ptr %str_data30)
  %str_data32 = load ptr, ptr @.str.355, align 8
  %print_call33 = call i64 @npk_print_cstr(ptr %str_data32)
  call void @proc_exit(i32 1)
  br label %ifcont34

ifcont34:                                         ; preds = %then29, %ifcont26
  %file_path = alloca ptr, align 8
  %args35 = load ptr, ptr %args, align 8
  %calltmp36 = call { ptr, ptr, i8 } @nitpick_args.args_at(ptr %args35, i32 1)
  %raw.value37 = extractvalue { ptr, ptr, i8 } %calltmp36, 0
  store ptr %raw.value37, ptr %file_path, align 8
  %file_path38 = load ptr, ptr %file_path, align 8
  %str = load %struct.NpkString, ptr %file_path38, align 8
  %prefix = load %struct.NpkString, ptr @.str.357, align 8
  %starts_with = call i1 @npk_string_starts_with(%struct.NpkString %str, %struct.NpkString %prefix)
  %ifcond39 = icmp ne i1 %starts_with, false
  br i1 %ifcond39, label %then40, label %ifcont43

then40:                                           ; preds = %ifcont34
  %str_data41 = load ptr, ptr @.str.359, align 8
  %print_call42 = call i64 @npk_print_cstr(ptr %str_data41)
  call void @proc_exit(i32 1)
  br label %ifcont43

ifcont43:                                         ; preds = %then40, %ifcont34
  %output_file = alloca ptr, align 8
  %args44 = load ptr, ptr %args, align 8
  %calltmp45 = call { ptr, ptr, i8 } @nitpick_args.args_get(ptr %args44, ptr @.str.361)
  %raw.value46 = extractvalue { ptr, ptr, i8 } %calltmp45, 0
  store ptr %raw.value46, ptr %output_file, align 8
  %env_file = alloca ptr, align 8
  %args47 = load ptr, ptr %args, align 8
  %calltmp48 = call { ptr, ptr, i8 } @nitpick_args.args_get(ptr %args47, ptr @.str.363)
  %raw.value49 = extractvalue { ptr, ptr, i8 } %calltmp48, 0
  store ptr %raw.value49, ptr %env_file, align 8
  %verbose = alloca i32, align 4
  store i32 0, ptr %verbose, align 4
  %args50 = load ptr, ptr %args, align 8
  %calltmp51 = call { i1, ptr, i8 } @nitpick_args.args_has(ptr %args50, ptr @.str.365)
  %raw.value52 = extractvalue { i1, ptr, i8 } %calltmp51, 0
  %ifcond53 = icmp ne i1 %raw.value52, false
  br i1 %ifcond53, label %then54, label %ifcont55

then54:                                           ; preds = %ifcont43
  store i32 1, ptr %verbose, align 4
  br label %ifcont55

ifcont55:                                         ; preds = %then54, %ifcont43
  %args56 = load ptr, ptr %args, align 8
  %calltmp57 = call { i1, ptr, i8 } @nitpick_args.args_has(ptr %args56, ptr @.str.367)
  %raw.value58 = extractvalue { i1, ptr, i8 } %calltmp57, 0
  %ifcond59 = icmp ne i1 %raw.value58, false
  br i1 %ifcond59, label %then60, label %ifcont61

then60:                                           ; preds = %ifcont55
  store i32 1, ptr %verbose, align 4
  br label %ifcont61

ifcont61:                                         ; preds = %then60, %ifcont55
  %str_data62 = load ptr, ptr @.str.369, align 8
  %print_call63 = call i64 @npk_print_cstr(ptr %str_data62)
  %file_path64 = load ptr, ptr %file_path, align 8
  %str_struct = load %struct.NpkString, ptr %file_path64, align 8
  %str_data65 = extractvalue %struct.NpkString %str_struct, 0
  %print_call66 = call i64 @npk_print_cstr(ptr %str_data65)
  %str_data67 = load ptr, ptr @.str.371, align 8
  %print_call68 = call i64 @npk_print_cstr(ptr %str_data67)
  %req = alloca %Request, align 8
  %file_path69 = load ptr, ptr %file_path, align 8
  %env_file70 = load ptr, ptr %env_file, align 8
  %calltmp71 = call { %Request, ptr, i8 } @parser.parse_request(ptr %file_path69, ptr %env_file70)
  %raw.value72 = extractvalue { %Request, ptr, i8 } %calltmp71, 0
  store %Request %raw.value72, ptr %req, align 8
  %verbose73 = load i32, ptr %verbose, align 4
  %eqtmp = icmp eq i32 %verbose73, 1
  %ifcond74 = icmp ne i1 %eqtmp, false
  br i1 %ifcond74, label %then75, label %ifcont122

then75:                                           ; preds = %ifcont61
  %str_data76 = load ptr, ptr @.str.373, align 8
  %print_call77 = call i64 @npk_print_cstr(ptr %str_data76)
  %req78 = load %Request, ptr %req, align 8
  %method = extractvalue %Request %req78, 0
  %str_struct79 = load %struct.NpkString, ptr %method, align 8
  %str_data80 = extractvalue %struct.NpkString %str_struct79, 0
  %print_call81 = call i64 @npk_print_cstr(ptr %str_data80)
  %str_data82 = load ptr, ptr @.str.375, align 8
  %print_call83 = call i64 @npk_print_cstr(ptr %str_data82)
  %req84 = load %Request, ptr %req, align 8
  %url = extractvalue %Request %req84, 1
  %str_struct85 = load %struct.NpkString, ptr %url, align 8
  %str_data86 = extractvalue %struct.NpkString %str_struct85, 0
  %print_call87 = call i64 @npk_print_cstr(ptr %str_data86)
  %str_data88 = load ptr, ptr @.str.377, align 8
  %print_call89 = call i64 @npk_print_cstr(ptr %str_data88)
  %disp_headers = alloca ptr, align 8
  %req90 = load %Request, ptr %req, align 8
  %headers_pipe = extractvalue %Request %req90, 2
  %calltmp91 = call { ptr, ptr, i8 } @nitpick_str.Str_replace_all(ptr %headers_pipe, ptr @.str.379, ptr @.str.381)
  %raw.value92 = extractvalue { ptr, ptr, i8 } %calltmp91, 0
  store ptr %raw.value92, ptr %disp_headers, align 8
  %disp_headers93 = load ptr, ptr %disp_headers, align 8
  %str94 = load %struct.NpkString, ptr %disp_headers93, align 8
  %length = extractvalue %struct.NpkString %str94, 1
  %gttmp = icmp sgt i64 %length, 0
  %ifcond95 = icmp ne i1 %gttmp, false
  br i1 %ifcond95, label %then96, label %ifcont103

then96:                                           ; preds = %then75
  %disp_headers97 = load ptr, ptr %disp_headers, align 8
  %str_struct98 = load %struct.NpkString, ptr %disp_headers97, align 8
  %str_data99 = extractvalue %struct.NpkString %str_struct98, 0
  %print_call100 = call i64 @npk_print_cstr(ptr %str_data99)
  %str_data101 = load ptr, ptr @.str.383, align 8
  %print_call102 = call i64 @npk_print_cstr(ptr %str_data101)
  br label %ifcont103

ifcont103:                                        ; preds = %then96, %then75
  %req104 = load %Request, ptr %req, align 8
  %body = extractvalue %Request %req104, 3
  %str105 = load %struct.NpkString, ptr %body, align 8
  %length106 = extractvalue %struct.NpkString %str105, 1
  %gttmp107 = icmp sgt i64 %length106, 0
  %ifcond108 = icmp ne i1 %gttmp107, false
  br i1 %ifcond108, label %then109, label %ifcont119

then109:                                          ; preds = %ifcont103
  %str_data110 = load ptr, ptr @.str.385, align 8
  %print_call111 = call i64 @npk_print_cstr(ptr %str_data110)
  %req112 = load %Request, ptr %req, align 8
  %body113 = extractvalue %Request %req112, 3
  %str_struct114 = load %struct.NpkString, ptr %body113, align 8
  %str_data115 = extractvalue %struct.NpkString %str_struct114, 0
  %print_call116 = call i64 @npk_print_cstr(ptr %str_data115)
  %str_data117 = load ptr, ptr @.str.387, align 8
  %print_call118 = call i64 @npk_print_cstr(ptr %str_data117)
  br label %ifcont119

ifcont119:                                        ; preds = %then109, %ifcont103
  %str_data120 = load ptr, ptr @.str.389, align 8
  %print_call121 = call i64 @npk_print_cstr(ptr %str_data120)
  br label %ifcont122

ifcont122:                                        ; preds = %ifcont119, %ifcont61
  %str_data123 = load ptr, ptr @.str.391, align 8
  %print_call124 = call i64 @npk_print_cstr(ptr %str_data123)
  %req125 = load %Request, ptr %req, align 8
  %url126 = extractvalue %Request %req125, 1
  %str_struct127 = load %struct.NpkString, ptr %url126, align 8
  %str_data128 = extractvalue %struct.NpkString %str_struct127, 0
  %print_call129 = call i64 @npk_print_cstr(ptr %str_data128)
  %str_data130 = load ptr, ptr @.str.393, align 8
  %print_call131 = call i64 @npk_print_cstr(ptr %str_data130)
  %res = alloca %Response, align 8
  %req132 = load %Request, ptr %req, align 8
  %calltmp133 = call { %Response, ptr, i8 } @dispatcher.dispatch_request(%Request %req132)
  %raw.value134 = extractvalue { %Response, ptr, i8 } %calltmp133, 0
  store %Response %raw.value134, ptr %res, align 8
  %res135 = load %Response, ptr %res, align 8
  %calltmp136 = call { %struct.NIL, ptr, i8 } @formatter.format_response(%Response %res135)
  %raw.value137 = extractvalue { %struct.NIL, ptr, i8 } %calltmp136, 0
  %output_file138 = load ptr, ptr %output_file, align 8
  %str139 = load %struct.NpkString, ptr %output_file138, align 8
  %length140 = extractvalue %struct.NpkString %str139, 1
  %gttmp141 = icmp sgt i64 %length140, 0
  %ifcond142 = icmp ne i1 %gttmp141, false
  br i1 %ifcond142, label %then143, label %ifcont164

then143:                                          ; preds = %ifcont122
  %res_write = alloca i32, align 4
  %output_file144 = load ptr, ptr %output_file, align 8
  %res145 = load %Response, ptr %res, align 8
  %body146 = extractvalue %Response %res145, 2
  %calltmp147 = call { i32, ptr, i8 } @nitpick_fs.fs_write_file(ptr %output_file144, ptr %body146)
  %raw.value148 = extractvalue { i32, ptr, i8 } %calltmp147, 0
  store i32 %raw.value148, ptr %res_write, align 4
  %res_write149 = load i32, ptr %res_write, align 4
  %eqtmp150 = icmp eq i32 %res_write149, 1
  %ifcond151 = icmp ne i1 %eqtmp150, false
  br i1 %ifcond151, label %then152, label %else

then152:                                          ; preds = %then143
  %str_data153 = load ptr, ptr @.str.395, align 8
  %print_call154 = call i64 @npk_print_cstr(ptr %str_data153)
  %output_file155 = load ptr, ptr %output_file, align 8
  %str_struct156 = load %struct.NpkString, ptr %output_file155, align 8
  %str_data157 = extractvalue %struct.NpkString %str_struct156, 0
  %print_call158 = call i64 @npk_print_cstr(ptr %str_data157)
  %str_data159 = load ptr, ptr @.str.397, align 8
  %print_call160 = call i64 @npk_print_cstr(ptr %str_data159)
  br label %ifcont163

else:                                             ; preds = %then143
  %str_data161 = load ptr, ptr @.str.399, align 8
  %print_call162 = call i64 @npk_print_cstr(ptr %str_data161)
  br label %ifcont163

ifcont163:                                        ; preds = %else, %then152
  br label %ifcont164

ifcont164:                                        ; preds = %ifcont163, %ifcont122
  call void @proc_exit(i32 0)
  ret i32 0
}

declare i64 @napit_get_env(ptr)

declare void @proc_exit(i32)

declare void @npk_gc_init(i64, i64)

declare void @npk_args_init(i32, ptr)

declare void @npk_streams_init()
