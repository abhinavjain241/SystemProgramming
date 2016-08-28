#include<stdio.h>
#include<string.h>


int f(char t[]){
	if (strcmp(t, "al")==0) return 0;
	else if (strcmp(t, "cl")==0) return 1;
	else if (strcmp(t, "dl")==0) return 2;
	else if (strcmp(t, "bl")==0) return 3;
	else if (strcmp(t, "ah")==0) return 4;
	else if (strcmp(t, "ch")==0) return 5;
	else if (strcmp(t, "dh")==0) return 6;
	else if (strcmp(t, "bh")==0) return 7;
	return 200;
}

int main(){

	char t[10], u[10], v[10], sy[200];
	int i=0;

	do {
		scanf("%s", t);
		if (t[1]==':') sy[t[0]]=i;
		if (strcmp(t, "int")==0) {
			scanf("%s", u);
			i+=2;
			printf("205 %s\n", u);

		}
		if (strcmp(t, "jc")==0) {
			scanf("%s", u);
			i+=2;
			printf("114 %d\n", sy[u[0]]-i);
		}
		if (strcmp(t, "add")==0) {
			scanf("%s%s", u, v);
			i+=3;
			printf("128 %d %s\n", 192+f(u), v);
		}
		if (strcmp(t, "cmp")==0) {
			scanf("%s%s", u, v);
			i+=3;
			printf("128 %d%s\n", 248+f(u), v);
		}
		if (strcmp(t, "mov")==0) {
			scanf("%s %s", u, v);
			i+=2;
			if (f(v)<200) printf("138 %d\n", 192+8*f(u)+f(v));
			else printf("%d %s\n", 176+f(u), v);
		}


	} while (strcmp(t, "end")!=0);

	return 0;
}