//
//  ViewController.m
//  NSDictionary
//
//  Created by Trung Bao on 10/28/15.
//  Copyright © 2015 Trung Bao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *text;
@property (weak, nonatomic) IBOutlet UILabel *labelNghia;

@end

@implementation ViewController
{
    NSArray *A;NSArray *B;NSArray *C;NSArray *D;NSArray *E;NSArray *F;
    NSArray *G;NSArray *H;NSArray *i;NSArray *K;NSArray *L;NSArray *M;
    NSArray *N;NSArray *O;
    NSDictionary *tudien;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    A=@[@"ask",@"hỏi",@"appear",@"xuất hiện",@"agree",@"đồng ý"];
    B=@[@"become",@"trở thành",@"begin",@"bắt đầu",@"belive",@"tin tưởng",@"buy",@"mua",@"build",@"xây"];
    C=@[@"come",@"đến",@"call",@"cuộc gọi",@"continue",@"tiếp tục",@"change",@"thay đổi",@"create",@"tạo mới",@"cut",@"cắt",@"choose",@"lựa chọn"];
    D=@[@"do",@"làm",@"decide",@"quyết đinh",@"develop",@"phát triển",@"draw",@"vẽ"];
    E=@[@"explain",@"giải thích",@"eat",@"ăn"];
    F=@[@"find",@"tìm thấy",@"feel",@"cảm thấy",@"follow",@"theo",@"fall",@"rơi"];
    G=@[@"go",@"đi",@"get",@"được",@"give",@"cho",@"grow",@"lớn lên"];
    H=@[@"have",@"có",@"help",@"giúp đỡ",@"hear",@"nghe",@"happen",@"xảy ra",@"hope",@"hy vọng"];
    i=@[@"include",@"bao gồm"];
    K=@[@"keep",@"giữ",@"kill",@"giết"];
    L=@[@"leave",@"rời khỏi",@"let",@"để cho",@"live",@"sống",@"lose",@"mất",@"learn",@"học"];
    M=@[@"make",@"làm",@"mean",@"nghĩa là",@"move",@"di chuyển",@"meet",@"gặp"];
    N=@[@"need",@"nhu cầu"];
    O=@[@"open",@"mở"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)dichTiengViet:(id)sender {
    tudien=@{@"a":(NSArray *)A,@"b":(NSArray *)B,@"c":(NSArray *)C,@"d":(NSArray *)D,@"e":(NSArray *)E,@"f":(NSArray *)F,
             @"g":(NSArray *)G,@"h":(NSArray *)H,@"i":(NSArray *)i,@"k":(NSArray *)K,@"l":(NSArray *)L,@"m":(NSArray *)M,
             @"n":(NSArray *)N,@"o":(NSArray *)O};
    NSString *tunhap =[self.text text];
    char kytudau=[tunhap characterAtIndex:0];
    //NSLog(@"%c",kytudau);
    NSArray *KEY=[tudien allKeys];
    //NSLog(@"%@",KEY[2]);
    BOOL sosanh= [KEY containsObject:[NSString stringWithFormat:@"%c",kytudau]];//NSLog(@"%d",sosanh);
    if (sosanh==1) {
        //unsigned long n=[KEY indexOfObject:[NSString stringWithFormat:@"%c",kytudau]];
        BOOL timtu=[[tudien objectForKey:[NSString stringWithFormat:@"%c",kytudau]] containsObject:[NSString stringWithString:tunhap]];
        if (timtu==1) {
            unsigned long x=[[tudien objectForKey:[NSString stringWithFormat:@"%c",kytudau] ]  indexOfObject:[NSString stringWithFormat:@"%@",tunhap]];
            self.labelNghia.text=[NSString stringWithFormat:@"%@",[tudien objectForKey:[NSString stringWithFormat:@"%c",kytudau]][x+1]];
        } else {
            self.labelNghia.text=@"Từ bạn nhập không có";
        }
    } else {
        self.labelNghia.text=@"Từ bạn nhập không có";
    }
}

@end
