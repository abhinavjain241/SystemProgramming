#include<stdio.h>
#include<stdint.h>

int g(int i){
	if (i>=4) return (i-4)*2+1;
	else return 2*i;
}

int main(){
	unsigned short regs[8];
	unsigned char* r = (unsigned char*)regs;
	int i,cy=1,x,y,z,p,q,a[10000], pc=0;
	int wr[4];
	char t[10],c;
	FILE *fp;

	printf("Give filename: ");
	scanf("%s", t);
	fp=fopen(t, "r");

	for(i=0;i<=1000; i++){
		fscanf(fp, "%d", &a[i]);
	}

	while(1){

		x = a[pc++];
		if (x >175 && x<184) {y=a[pc++];z=x%8; r[g(z)]=y;}
		if (x>=184 && x<192) {y=a[pc++];z=x%8;x=a[pc++]; regs[z]=y+256*x;}
		if (x==138) {y=a[pc++]; p=y%64/8;q=y%8;r[g(p)]=r[g(q)];}
		if (x==139) {y=a[pc++]; p=y%64/8;q=y%8;regs[p]=regs[q];}
		
		// cmp reg, reg
		if (x==58) {y=a[pc++]; p=y%64/8;q=y%8;if (r[g(p)]-r[g(q)]<0) cy=1; else cy=0;}
		if (x==59) {y=a[pc++]; p=y%64/8;q=y%8;if (regs[p]-regs[q]<0) cy=1; else cy=0;}

		if (x==205 && r[g(4)]==2) y=a[pc++], printf("%c", r[g(2)]);
		if (x==205 && r[g(4)]==76) {y=a[pc++]; break;}
		if (x==205 && r[g(4)]==1) {
			y=a[pc++]; 
			do {
				c= getchar();

			} while (c<20);
			r[g(0)] = c;
		}
		if (x==128) {
			y=a[pc++]; z= a[pc++]; p=y%8; q=r[g(p)];
			if (y>191 && y<200) r[g(p)]+=z;
			if (y>247) if (q<z) cy=1; else cy=0;
		}
		if (x==129) {
			y=a[pc++]; z= a[pc++]; p=y%8;x=a[pc++]; q=regs[p];
			if (y>191 && y<200) regs[p]+=z+256*x;
			if (y>247) if (q<z+256*x) cy=1; else cy=0;
		}
		if (x==114) {
			y=a[pc++];
			if (cy){
				pc = pc+y;
			}
		}
		if (x==235) {
			y=a[pc++];
			pc = pc+y;
		}

	}
	printf("\n");

}
