#include<stdio.h>
#include<string.h>
#include<stdlib.h>

int f(char t[]){
	if (strcmp(t, "al")==0) return 0;
	else if (strcmp(t, "cl")==0) return 1;
	else if (strcmp(t, "dl")==0) return 2;
	else if (strcmp(t, "bl")==0) return 3;

	else if (strcmp(t, "ah")==0) return 4;
	else if (strcmp(t, "ch")==0) return 5;
	else if (strcmp(t, "dh")==0) return 6;
	else if (strcmp(t, "bh")==0) return 7;

	else if (strcmp(t, "ax")==0) return 0;
	else if (strcmp(t, "cx")==0) return 1;
	else if (strcmp(t, "dx")==0) return 2;
	else if (strcmp(t, "bx")==0) return 3;

	else if (strcmp(t, "sp")==0) return 4;
	else if (strcmp(t, "bp")==0) return 5;
	else if (strcmp(t, "si")==0) return 6;
	else if (strcmp(t, "di")==0) return 7;

	else if (strcmp(t, "es")==0) return 0;
	else if (strcmp(t, "cs")==0) return 1;
	else if (strcmp(t, "ss")==0) return 2;
	else if (strcmp(t, "ds")==0) return 3;

	return 200;
}

int isword(char t[]){
	if (t[1]=='x' || t[1]=='p' || t[1]=='i' ) return 1;
	return 0;
}
bool isint(char* a){
	if (a[0]<='9') return true;
	return false;
}
bool isseg(char* a){
	if (a[1]=='s') return true;
	return false;
}
bool ismem(char* a){
	if (a[0]=='[') return true;
	return false;
}

int main(){

	char t[10], u[10], v[10], sy[200];
	int i=0;
	int jlines[100], jlabel[100];
	int ins[1000]={0};
	int k=0;
	
	do {
		scanf("%s", t);

		if (strcmp(t, ".data")==0) {
			scanf("%s", t);
			while (strcmp(t, ".code")!=0){
			if (t[1]==':') sy[t[0]]=i;
			else ins[i++]=atoi(t);
			scanf("%s", t);
			}
			ins[i++]=999;
		} else if (i==0) ins[i++]=999;

		if (t[1]==':') sy[t[0]]=i;
		if (strcmp(t, "int")==0) {
			scanf("%s", u);
			i+=2;

			ins[i-2] = 205;
			ins[i-1] = atoi(u);
		}
		if (strcmp(t, "jc")==0) {
			scanf("%s", u);
			ins[i]=114;
			i+=2;
			ins[i-1] = -5;
			jlines[k]=i-1;
			jlabel[k]=u[0];
			k++;
		}
		if (strcmp(t, "jmp")==0) {
			scanf("%s", u);
			ins[i]=235;
			i+=2;
			ins[i-1] = -5;
			jlines[k]=i-1;
			jlabel[k]=u[0];
			k++;
		}
		if (strcmp(t, "add")==0) {
			scanf("%s%s", u, v);
			i+=3;
			ins[i-3] = 128;
			ins[i-2] = 192+f(u);
			if (isint(v)) ins[i-1] = atoi(v);
			else ins[i-1] = 192+f(v);
			// TODO Word size remaining only generation part

		}
		if (strcmp(t, "cmp")==0) {
			scanf("%s%s", u, v);

			if (f(v)<200) {
				i+=2;
				ins[i-2] = 58+isword(v);
				ins[i-1] = 192+8*f(u)+f(v);
			}
			else {
				i+=3;
				ins[i-3] = 128+isword(u);
				ins[i-2] = 248+f(u);

				if (isword(u)){
					i++;
					ins[i-2] = atoi(v)%256;
					ins[i-1] = atoi(v)/256;
				}
				else
				ins[i-1] = atoi(v);


			}
				
		}
		
		if (strcmp(t, "mov")==0) {
			scanf("%s %s", u, v);
			i+=2;

			if (f(v)<200) {
				ins[i-2] = 138+isword(v);
				ins[i-1] = 192+8*f(u)+f(v);
			}
			else if (ismem(v)){
				i++;
				ins[i-3] = 100;
				ins[i-2] = f(u)+8*isword(u);
				sscanf(v, "[%2s]", v);
				ins[i-1] = 8*f(v);
			}
			else if (isseg(v)||isseg(u)){
				i++;
				ins[i-3] = 99;
				ins[i-2] = f(u)+8*isword(u);
				int temp;
				sscanf(v, "cs:[%d]", &temp);
				ins[i-1] = temp;
			}
			else {
				ins[i-2] = 176+f(u)+8*isword(u);
				if (isword(u)){
					i++;
					ins[i-2] = atoi(v)%256;
					ins[i-1] = atoi(v)/256;
				}
				else
				ins[i-1] = atoi(v);
			}

		}
		
		if (strcmp(t, "lea")==0) {
			scanf("%s %s", u, v);
			i+=2;

			{
				ins[i-2] = 176+f(u)+8*isword(u);
				ins[i-1] = sy[v[0]];
				i++;
				ins[i-1] = 0;
			}

		}


	} while (strcmp(t, "end")!=0);



	for(int j=0;j<k;j++){
		ins[jlines[j]] = sy[jlabel[j]]-jlines[j]-1;
	}
	for(int j=0;j<i;j++){
		printf("%d ", ins[j]);
	}
	printf("\n");

	return 0;
}
